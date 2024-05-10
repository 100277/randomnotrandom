import 'package:flutter/material.dart';
import "package:randomnotrandom/screen/home.dart";

class report extends StatefulWidget {
 
    const report({super.key}); 

    @override 
    feedback createState() => feedback();
}

class feedback extends State<report> {
  @override
  Widget build(BuildContext context) {
    TextEditingController hehe = new TextEditingController();
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( "Feedback", style: Theme.of(context).textTheme.titleMedium,),
            SizedBox(height: 20),
            TextField(minLines: 1, maxLines: 200, keyboardType: TextInputType.multiline, controller: hehe, decoration: InputDecoration(border:OutlineInputBorder(), labelText: "Type here",)),
            Align(alignment: Alignment.centerRight,child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.red,),onPressed: (){
                if(hehe.text.isEmpty){
                  showDialog<String>(context: context, builder: (BuildContext context) => AlertDialog(title: Text("Error"), content: Text("Please enter your feedback"), actions: <Widget>[TextButton(onPressed: (){Navigator.pop(context, "OK");}, child: Text("OK"))],));
                }
                else{Navigator.push(context, MaterialPageRoute(builder: (context) => home()));}
            }, child: Text("Submit", style: TextStyle(color: Colors.white, fontSize: 16,),))),
            
          ],
        ),)

  
      );



  }

}

