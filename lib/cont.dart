import "package:flutter/material.dart";
void main(){
  runApp( cont());
}

class cont extends StatelessWidget {
  cont({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp( title: "ex",
    home: MyHomePage(),);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context){
    Padding title = Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("lkk",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                 Text("aaaaaaa",
                 style: TextStyle(fontSize: 16, color: Colors.grey[800]),),
              ],
            ),
          );
    Row icon = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        iconn(Icons.call, "call", Colors.blue),
        iconn(Icons.people, "people", Colors.blue),
        iconn(Icons.alarm, "alarm", Colors.blue),
      ],
    );
    Widget step = Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children:
      [
        Text(
          "whfl",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Padding(padding: const EdgeInsets.only(right: 8.0),
        child: Text("1", style: Theme.of(context).textTheme.titleLarge,)),

        SizedBox(width: MediaQuery.of(context).size.width*0.5,
        child: Text(
          "lllllllllllllll", style: TextStyle(fontSize: 16),
        )),
        Image.asset("assets/screen.png", width: MediaQuery.of(context).size.width*0.3, fit: BoxFit.contain),],),
        iconn(Icons.lightbulb, "light", Colors.teal),
        iconn(Icons.headphones, "headphones", Colors.grey),
      ],)
    );
        
       
    return Scaffold(
      appBar: AppBar(title: Text("res"),),
      body:  ListView(
        children: [
          Image.asset(
            "assets/screen.png",
          ),
          title,
          icon,
          step,

          
      ],
      ),
    );
  }

  Row iconn(IconData ii, String ss, Color cc) {
    return Row(children: [Icon(ii,color: cc),
      Container( margin: const EdgeInsets.only(left: 8.0),
      child: Text(ss,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),),),
      
    ],);
  }
}