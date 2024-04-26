import 'dart:async';
import 'dart:io';
import 'package:puppeteer/puppeteer.dart';
 import 'dart:html' as haha;


Future<void> main() async {
  var hehe = 0;
  var browser = await puppeteer.launch(headless: true);
  var page = await browser.newPage();
  await page.goto('https://www.google.com/maps/search/food+near+me/@35.30054,-117.2065131,13z/data=!3m1!4b1?entry=ttu');
  await page.waitForSelector('[jstcache="3"]');
  var scrollable = await page.$('div.section-scrollbox.scrollable-y');
  if (scrollable == null) {
    print('no');
    await browser.close();
    return;
  }
 var endOfList = false;
while (!endOfList) {
  await scrollable.evaluate('node => { node.scrollTop = node.scrollHeight; }');
  await Future.delayed(Duration(milliseconds: 1));

var pageContent = await page.content as String;
if (pageContent.contains("You've reached the end of the list")) {
  endOfList = true; // Set endOfList to true when the desired condition is met
}

}


  

  List<dynamic> urls = await page.$$eval('a[href^="https://www.google.com/maps/place/"]', (List<dynamic> links) {
    return links.map<String>((anchor) => (anchor as dynamic).attributes['href'] as String).toList();
  } as String);


  var result = <Map<String, String>>[];
  for (var url in urls!) {
    await page.goto(url);

    await page.waitForSelector('[jstcache="3"]');
    var element = await page.$('h1.section-hero-header-title-title');
    var bodyText = '';
    if (element != null) {
      bodyText = await page.evaluate('(element) => element.innerText');
    }
    var rate = await page.$('span.section-star-display');
    var rat = '';
    if (rate != null) {
      rat = await page.evaluate('(element) => element.innerText');
    }
    

    result.add({'bodyText': bodyText, 'rat': rat, 'url': url});
    print('Scrapped: $bodyText, ${++hehe}');
  }
  var filePath = 'C:/Users/Owner/work/randomnotrandom/ko.csv';
  var file = File(filePath);
   var csvHeader = 'NAME, rating, URL\n';
  var csv = result.map((row) => '${row['bodyText']},${row['rat']},${row['url']}').join('\n');
  await file.writeAsString(csvHeader + csv);
  await browser.close();
    
  }
    

    
 

