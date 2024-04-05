import "package:flutter/material.dart";
import "package:randomnotrandom/cafe.dart";


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  //static const String _title = "Flutter code sample";

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Not Random',
        home: cafe(),
    );
  }
}