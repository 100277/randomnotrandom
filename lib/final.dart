import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:randomnotrandom/favorite.dart';
import 'package:randomnotrandom/screen/home.dart';

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
        endDrawer: favorite(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text("Random not Random", style: TextStyle(fontSize: 26, color: Colors.blue, fontWeight: FontWeight.bold),
              )),
              Spacer(),
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Icon(Icons.star, color: Colors.blue,),
              ),
            ],
            ),
          backgroundColor: Color.fromARGB(255, 206, 230, 250),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Container(
              color: const Color.fromARGB(255, 86, 150, 202),
              
            ),
        ),
        ),
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
  child: 
      
      
        // Add space
      Column(
        children: [
        Text("Found it!", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        SizedBox(height: 20),
      
      // Add space
        Text("Name: $name", style: TextStyle(fontSize: 20,color: Colors.black,), textAlign: TextAlign.center),
        Column(children: <Widget>[

           
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
            child: Text("Press link", style: TextStyle(fontSize: 26,color: Colors.blue, decoration: TextDecoration.underline), textAlign : TextAlign.center),
          )
        ],
      )
        ]
  ),
));
 
    
  }
}




