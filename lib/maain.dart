import "package:flutter/material.dart";
import "package:randomnotrandom/screen/home.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}