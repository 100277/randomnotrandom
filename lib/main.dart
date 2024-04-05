import 'package:flutter/material.dart';
// import 'package:randomnotrandom/theme.dart';
// import 'package:randomnotrandom/home.dart';
// import 'package:randomnotrandom/second.dart';
// import 'package:randomnotrandom/th.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key:key);
  //static const String _title = "Flutter code sample";

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Not Random',
        home: MyStatefulWidget(),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
   const MyStatefulWidget({Key? key}) : super(key:key);


  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();

  }




class _MyStatefulWidget extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '0',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      '1',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      '2',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),  
    )
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("sample", style: TextStyle(color: Colors.white))
        ),
        body:  Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
          bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.green,
            ),
          ],
          selectedItemColor: Colors.yellowAccent,
          unselectedItemColor: Colors.grey[50],
          currentIndex : _selectedIndex,
          onTap: _onItemTapped,
          ),
      
    );
  }



  }






