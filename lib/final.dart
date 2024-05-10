import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';

String name = '';
String num = '';
 String link = '';
 bool heh = true;

Future<void> fin() async {
  // Open the CSV file
  final input = File('ko.csv').openRead();

  // Parse the CSV file
  final fields = await input.transform(utf8.decoder).transform(const CsvToListConverter()).toList();

  // Print each row of the CSV file
  for (final row in fields) {
    if(heh){
      name= row[0];
      link = row[1];
      break;
    }
    
  }
}



class fan extends StatefulWidget {
  
  const fan({Key? key}) : super(key: key);

  @override
  _finalState createState() => _finalState();
}

class _finalState extends State<fan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [Text("Found it!", style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
      Text("Name: $name"),
      Column(children: [Text("Link: $link"), GestureDetector(
            onTap: () {
              void _launchURL(String url) async {
                if (await canLaunchUrl((Uri.parse(link)))) {
                  await launchUrl(Uri.parse(link));
                } else {
                  throw 'Could not launch $link';
                }
              }

              _launchURL('$link');
            }, )],
    )]
    )
    );
  }
}


