import "package:flutter/material.dart";
import "package:randomnotrandom/screen/home.dart";


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: mmm(),
    );
  }
}

class mmm extends StatefulWidget{
  const mmm({Key? key}): super (key: key);

  @override
  _mmmState createState() => _mmmState();
}

class _mmmState extends State<mmm>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
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
            ],
            ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
          },
          child: Text("Go to Home"),
        ),
      ),
    ); //login
  }
}