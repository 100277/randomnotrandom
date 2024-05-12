import "package:flutter/material.dart";
import "package:randomnotrandom/login.dart";


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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(20,5,20,80),
            width: 100,
            height: 25,
            color: Colors.cyan[800],
            child: 
                Center(child:Text(
                  "Random not Random",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),)),),
                Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(20,5,20,80),
            width: 50,
            height: 25,
            color: Colors.amber[800],),),
            
           Container(
            margin: EdgeInsets.fromLTRB(20,5,20,80),
            width: 100,
            height: 25,
            color: Colors.red[800],
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: 20, 
              height: 30,
              child: 
                ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
              },
              child: Text("Login"),
      ))),],
          ),

                );
      
    
          
  }
}