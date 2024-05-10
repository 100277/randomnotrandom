const { chromium } = require('playwright');
const fs = require('fs');

(async () => {
  let hehe = 0;
  let long = 0;
  let lat = 0;
  const browser = await chromium.launch({headless: true});
  const page = await browser.newPage();
  await page.goto(`https://www.google.com/maps/search/food+near+me/@35.30054,-117.2065131,13z/data=!3m1!4b1?entry=ttu`);
  await page.waitForSelector('[jstcache ="3"]');
  const scrollable = await page.$('xpath=/html/body/div[2]/div[3]/div[8]/div[9]/div/div/div[1]/div[2]/div/div[1]/div/div/div[1]/div[1]');
if(!scrollable) {
    console.log("no");
    await browser.close();
    return;
  }
  let endOfList = false;
  while (!endOfList) {
    await scrollable.evaluate(node => node.scrollBy(0, 100000000));

    endOfList = await page.evaluate(() => document.body.innerText.includes("You've reached the end of the list"));
  }
  console.log("wahoo");

  const urls = await page.$$eval('a', links => {
    return links
      .map(anchor => anchor.href)
      .filter(href => href.startsWith('https://www.google.com/maps/place/'))
  });
  const result = [];
  for (const url of urls)
  {
    await page.goto(url);
  
  
  await page.waitForSelector('[jstcache ="3"]');
  const element = await page.$$('xpath=/html/body/div[2]/div[3]/div[8]/div[9]/div/div/div[1]/div[2]/div/div[1]/div/div/div[2]/div/div[1]/div[1]/h1');
  let bodyText = '';
  if(element.length > 0) {
    bodyText = await page.evaluate(element => element.textContent,element[0]);
  }
  const rate = await page.$$('xpath=/html/body/div[2]/div[3]/div[8]/div[9]/div/div/div[1]/div[2]/div/div[1]/div/div/div[2]/div/div[1]/div[2]/div/div[1]/div[2]/span[1]/span[1]');
  let rat = '';
  if(rate.length > 0) {
    rat = await page.evaluate(element => element.textContent,rate[0]);
  }

  result.push({bodyText, rat,url});
  console.log(`Scrapped: ${bodyText}, ${++hehe}`);
}
const csvHeader = 'NAME, rating, URL\n';
const csv = result.map(row => `${row.bodyText},${row.rat},${row.url}`).join('\n');
  fs.writeFileSync('ko.csv', csvHeader + csv);
  await browser.close();

})();
