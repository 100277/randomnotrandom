import 'package:flutter/material.dart';
import "package:randomnotrandom/ccafe.dart";



class cafe extends StatelessWidget{const cafe({Key? key}) : super(key:key);

@override

Widget build(BuildContext context){
  List<String> menu = [
    "oh",
    "aj",
    "he",
    "ja",
  ];
return DefaultTabController(
  length: menu.length,
  child: Scaffold(appBar: AppBar(
    title: Text("1"),
    bottom: TabBar(
      tabs: List.generate(menu.length,(index) => Tab(
        text: menu[index],
      ),),
      ),),

      body: TabBarView(children: [
        Center(child: Text("New ghkaus"),),
        ccafe(),
        Center(child: Text("ice"),),
        Center(child: Text("cake"),),
      ],),

    ),
  );
  
}












}