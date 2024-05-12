import 'package:flutter/material.dart';
import 'package:randomnotrandom/waiting.dart';


class tab extends StatefulWidget {
  const tab({Key? key, required this.cc}) : super(key: key);
  final Color cc;

  @override
  tabstate createState() => tabstate();
}
 

class tabstate extends State<tab> {
  List<String> list = ["<10 minutes","10 minutes", "20 minutes", "30 minutes", "1 hour"];
    String? sel = "<10 minutes";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Container(
            height: 500,
          width: 200,
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all (
                color: widget.cc,
              
              width: 20,
              style: BorderStyle.solid,
              
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              
              
          ),
          child: Column(children: <Widget>[
            SizedBox(height: 10, width: 100),
            Text("I would like to go to the place in ", style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
            SizedBox(height: 50, width: 100),
            
            Center(
            child: DropdownButton<String>(
              
              value: sel,
               icon: const Icon(Icons.arrow_drop_down),
              items: list
                .map((item) => DropdownMenuItem<String>(value: item, child: Text(item))
                ).toList(),
                   onChanged: (item) => setState(() => sel = item),
                  ),

                
          
            ),
            SizedBox(height: 30, width: 100),
            ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => waiting()),
                
                
              );
            },
            child: Text('Submit'),
          ),
          ],

          

          )
    )
    );
      
    
  }
}


