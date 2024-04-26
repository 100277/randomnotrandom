import "package:flutter/material.dart";
import "package:randomnotrandom/screen/home.dart";

void main() {
  runApp(login());
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();

}
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(body: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text("login", style: TextStyle(fontSize: 26, color: Colors.blue, fontWeight: FontWeight.bold),),
        
        Padding(padding: const EdgeInsets.symmetric(vertical: 30),
        child: Form(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 15), child: TextFormField(
                
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value)
                {

                },
                validator: (value)
                {
                  return value!.isEmpty ? "Please enter your username" : null;
                },
              )),

              SizedBox(height: 30),

              Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                
                decoration: InputDecoration(
                  
                  labelText: "Password",
                  hintText: "Enter Password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value)
                {

                },
                validator: (value)
                {
                  return value!.isEmpty ? "Please enter your password" : null;
                },
              )),
             
              SizedBox(height: 30),
              Padding(padding: EdgeInsets.symmetric(horizontal: 30), child: MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                },
                child: Text("Login"),
              ),),
             
            ],
          ),
        )
        )
      ],),));
  }
}