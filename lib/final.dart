import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';

String name = 'Five Guys';
String num = '0';
String link = 'https://www.google.com/maps/place/Five+Guys/data=!4m7!3m6!1s0x872b1221a7888e5d:0x579c16bdd7170c63!8m2!3d33.4478427!4d-112.0748136!16s%2Fg%2F1td189l8!19sChIJXY6IpyESK4cRYwwX170WnFc?authuser=0&hl=en&rclk=1';
 bool heh = true;


class fan extends StatefulWidget {
  
  const fan({Key? key}) : super(key: key);

  @override
  _finalState createState() => _finalState();
}

class _finalState extends State<fan> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Container(
            height: 500,
          width: 200,
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all (
                color: Colors.teal,
              
              width: 20,
              style: BorderStyle.solid,
              
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              
              
          ),
          child: Column(children: <Widget>[
             SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Text("Found it!", style: TextStyle(fontSize: 30, color: Colors.black), textAlign: TextAlign.center),
            Text("Name: $name", style: TextStyle(fontSize: 20,color: Colors.black,), textAlign: TextAlign.center),
            Column(
              children: [
                Text("Press link", style: TextStyle(fontSize: 26,color: Colors.black,), textAlign : TextAlign.center), 
                GestureDetector(
                  onTap: () {
                    void _launchURL(String url) async {
                      if (await canLaunchUrl((Uri.parse(link)))) {
                        await launchUrl(Uri.parse(link));
                      } else {
                        throw 'Could not launch $link';
                      }
                    }

                    _launchURL('$link');
                  }, 
                )
              ],
            )
          ],
        ),
             ),
    )]
            

          

          )
    )
    );

  }
}


