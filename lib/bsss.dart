import 'package:flutter/material.dart';

void main() {
  runApp(const kek());
}

class kek extends StatelessWidget {
  const kek({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("아니"),
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all (
              color: const Color.fromRGBO(244, 67, 54, 1),
              width: 2,
              style: BorderStyle.solid,
              
              ),
              borderRadius: BorderRadius.only(
                topRight:Radius.circular(100),
                bottomLeft:Radius.circular(100)
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 255, 0, 157),
                  Color.fromARGB(255, 0, 152, 212),
                ]
              )
          )
          )
      ),
    );
  }
}