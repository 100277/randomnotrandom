import 'dart:async';
import 'dart:convert';
import 'dart:io';
import "package:flutter/material.dart";
import 'package:csv/csv.dart';

void main()
{
  runApp(load());
}

class load extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Your code here
    return Container(); // Replace Container() with your desired widget
  }
    // Your code here
      // Replace Container() with your desired widget
  
    Future<List<List<dynamic>>> readCsvFile(String filePath) async {
  final file = File(filePath);
  final contents = await file.readAsString();
  
  

  final converter = CsvToListConverter();
  final List<List<dynamic>> rows = converter.convert(contents);
  
  return rows;
}
  
  }
