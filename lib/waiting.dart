import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:http/http.dart' as http;

void main() {
runApp(waiting());
}

class waiting extends StatefulWidget {
const waiting({super.key});

@override
State<waiting> createState() => _wait();
}

class _wait extends State<waiting> {
  @override
  void initState() {
    super.initState();
    runAIComputation();
  }

  Future<void> runAIComputation() async {

//     void fetchData() async {
//   final response = await http.get(Uri.parse('http://localhost:3000/scrape'));              PERHAPS??????

//   if (response.statusCode == 200) {
//     print('Data: ${response.body}');
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }
// }
    // Replace this with your actual AI computation.
    await Future.delayed(Duration(seconds: 5));
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(builder: (context) => Final()),              I NEED THIS
    // );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: ListTile(
              leading: LoadingAnimationWidget.staggeredDotsWave(
                color: Color.fromARGB(255, 26, 153, 68),
                size: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}






