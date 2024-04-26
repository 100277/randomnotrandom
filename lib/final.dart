import 'dart:ffi';

import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';



Future<void> main() async {
  // Open the CSV file
  final input = File('ko.csv').openRead();

  // Parse the CSV file
  final fields = await input.transform(utf8.decoder).transform(const CsvToListConverter()).toList();

  // Print each row of the CSV file
  for (final row in fields) {
    print(row);
  }
}


String name = '';
String num = '';
 String link = '';

class fin extends StatefulWidget {
  final String ii;
  final String lin;
  const fin({Key? key, required this.ii, required this.lin}) : super(key: key);

  @override
  _finalState createState() => _finalState();
}

class _finalState extends State<fin> {
  @override
  Widget build(BuildContext context) {
    name = widget.ii;
    link = widget.lin;
    return Container(
      child: Column(children: [Text("Found it!", style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
      Text("Name: $name"),
      Column(children: [Text("Link: $link"), GestureDetector(
            onTap: () {
              void _launchURL(String url) async {
                if (await canLaunch(link)) {
                  await launch(link);
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


