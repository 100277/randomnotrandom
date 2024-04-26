// import 'package:csv/csv.dart';
// import "package:flutter/material.dart";
// import 'dart:io';
// import 'dart:convert';
// import "package:randomnotrandom/final.dart";
// Future<void> main() async {
//   double kek = 0.0;
// int hoho = 0;
  
//   while (true) {
    

//     final input = File('ko.csv').openRead();
   

//     final fields = await input.transform(utf8.decoder).transform(const CsvToListConverter()).toList();
//     for (int i = 0;i<fields.length;i++) {
//     String userInput = fields[i][1];
//     if(double.parse(userInput) > kek){
//       kek = double.parse(userInput);
//       hoho = i+1;
//     }
//     Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => final()),
                
                
//               );
//   }
  
    
  
//   }
// }