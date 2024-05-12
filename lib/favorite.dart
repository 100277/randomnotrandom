import 'package:flutter/material.dart';
import "package:randomnotrandom/report.dart";
import 'package:randomnotrandom/main.dart';



class favorite extends StatelessWidget {
  const favorite({
    super.key, 
  });
 


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("accountName"),
            accountEmail: Text("accountEmail"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
            "assets/screen.png",
          
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 197, 99, 164),
            ),
          ),
        
        ListTile(
          leading: Icon(Icons.map),
          title: Text("Map"),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => report())),
        ),
        ListTile(
          leading: Icon(Icons.share),
          title: Text("Share"),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.feedback),
          title: Text("Feedback"),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => report())),
        ),
        Spacer(),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.circle),
          title: Text("Profile"),
          onTap: () => null,
        ),
        Spacer(
          flex: 2,
        
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text("Log Out"),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp())),
        ),
        ],)
    );
  }
}


