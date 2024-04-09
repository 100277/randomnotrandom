import 'package:flutter/material.dart';
import "package:randomnotrandom/tab.dart"; 
void main() {
  runApp( home());
}

class home extends StatelessWidget {
   const home({Key? key}) : super(key:key);

  

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
        appBar: AppBar(
          title: Text("Random Not Random", style: TextStyle(fontSize: 26.0, color: Colors.lightBlue, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.white,
          actions: [
            IconButton(icon: const Icon(Icons.star), color: Colors.lightBlue, onPressed: () {},),
            IconButton(icon: const Icon(Icons.menu), color: Colors.lightBlue, onPressed: () {},),
          ],
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
            )
          
          
      
      
        ),
        ),
        body: TabBarView(
        children: [
          tab(s: "breakfast"),
          Center(child: Text("lunch")),
          Center(child: Text("dinner")),
          Center(child: Text("Desert/Snack")),
          Center(child: Text("Drinks")),
        ],
        ),
      ),
    );
  }
}

    