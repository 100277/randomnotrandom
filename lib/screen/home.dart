import 'package:flutter/material.dart';

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
            IconButton(icon: const Icon(Icons.menu), color: Colors.lightBlue, onPressed: () {},),
          ],
          bottom: TabBar(
            // isScrollable: true,
            tabs: List.generate(
              menu.length,
              (index) => Tab(
                text: menu[index],
              ),
            ),
      ),
      
      
        ),
        body: TabBarView(
        children: [
          Center(child: Text("breakfast")),
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

    