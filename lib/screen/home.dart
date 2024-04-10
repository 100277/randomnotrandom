import 'package:flutter/material.dart';
import "package:randomnotrandom/tab.dart"; 
import "package:randomnotrandom/favorite.dart";
void main() {
  runApp( home());
}

class home extends StatelessWidget {
   const home({Key? key}) : super(key:key);

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: hehe());
  }
}

class hehe extends StatefulWidget {
  const hehe({Key? key}) : super(key: key);

  @override
  _heheState createState() => _heheState();
}

class _heheState extends State<hehe> {
  @override
  Widget build(BuildContext context) {
    List<String> menu =[
      "Breakfast",
      "Lunch",
      "Dinner",
      "Dessert/Snack",
      "Drinks",
    ];
    return DefaultTabController(
      length: menu.length,
      child: Scaffold(
        endDrawer: favorite(),
        appBar: AppBar(
          title: Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text("Random not Random", style: TextStyle(fontSize: 26, color: Colors.blue, fontWeight: FontWeight.bold),
              )),
              Spacer(),
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Icon(Icons.star, color: Colors.blue,),
              ),
            ],
            ),
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Container(
              color: const Color.fromARGB(255, 86, 150, 202),
              child: TabBar(
            //isScrollable: true,
            tabs: List.generate(
              menu.length,
              (index) => Tab(
                text: menu[index],
              ),
            ),
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,

      ),
            ),
        ),
        ),
        body: TabBarView(
        children: [
          tab(cc: Color.fromARGB(255, 206, 127, 96)),
          tab(cc: Color.fromARGB(255, 245, 210, 57)),
          tab(cc: Color.fromARGB(255, 79, 177, 216)),
          tab(cc: Color.fromARGB(255, 54, 76, 202)),
          tab(cc: Color.fromARGB(255, 106, 51, 207)),
        ],
        ),
      ),
    );
  }
}

    