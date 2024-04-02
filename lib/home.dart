import "package:flutter/material.dart";

void main() {
  runApp(homee());
}
class homee extends StatelessWidget {
   const homee({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "first page",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("first"),
          ),
          body: Center(
            child: Text("this is 4"),
          )

      ),
    );
  }
  }