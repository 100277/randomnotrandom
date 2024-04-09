import 'package:flutter/material.dart';


class tab extends StatelessWidget {
  const tab({
    super.key, required this.s,
  });
  final String s;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all (
              // color: if(s == "breakfast")
              // {
                
              //   Color.fromARGB(255, 86, 150, 202),
              // }
              // else if(s.equals("lunch"))
              // {
              //   Color.fromARGB(255, 235, 165, 137),
              // }
              // else if(s.equals("dinner"))
              // {
              //   Color.fromARGB(255, 86, 150, 202),
              // }
              // else if(s.equals("dessert/snack"))
              // {
              //    Color.fromARGB(255, 235, 165, 137),
              // }
              // else if(s.equals("drinks"))
              // {
              //   Color.fromARGB(255, 86, 150, 202),
              // },
              
              width: 20,
              style: BorderStyle.solid,
              
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(40),
                
              ),
              
              
          )
          )
      
    );
  }
}


