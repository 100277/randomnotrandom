import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_js/flutter_js.dart';
import 'package:flutter/services.dart';

// class BackgroundJsApp {
  

//   static JsIsolate? _isolate;

//   static Future<void> start() async {
//     _isolate = await JsIsolate.spawn();
//     await _isolate!.ready();

//     String jsCode = await _loadJsFile('assets/mian.js');
//     await _isolate!.evaluate(jsCode);
//   }

//   static Future<void> stop() async {
//     await _isolate!.dispose();
//     _isolate = null;
//   }

//   static Future<String> _loadJsFile(String filePath) async {
    

//     String fileContent = await rootBundle.loadString(filePath);
//     return base64Encode(utf8.encode(fileContent));
//   }
// }