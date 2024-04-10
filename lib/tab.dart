import 'package:flutter/material.dart';


class tab extends StatelessWidget {
  const tab({
    super.key, required this.cc,
  });
  final Color cc;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all (
              color: cc,
              
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


