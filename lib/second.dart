import "package:flutter/material.dart";

void main() {
  runApp( sec());

}
class sec extends StatelessWidget {
  const sec({super.key});
  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: "second page",
      home: Scaffold(
        appBar: AppBar(
          title: Text("second"),
        ),
        body: Center(
          child: Text("this is second"),
        )

      ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sample"),
      ),
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.grey[50],
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
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
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            Navigator.pushNamed(context, _selectedIndex.toString());
          });
        },
      ),
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.


    );
  }
}