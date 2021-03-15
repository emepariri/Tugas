import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  NavBarState createState() => NavBarState();
}

Widget imageSection = Container(
  child: Image.asset('assets/images/Logo UNIPA Warna-01.png'),
);
Widget titleSection = Container(
  padding: EdgeInsets.only(top: 0),
  child: Text(
    'SIMUNIPA',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20,
    ),
  ),
);
Widget descriptionSection = Container(
  padding: EdgeInsets.all(10),
  child: Text(
    'PORTAL MAHASISWA',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
);

class NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("SIMUNIPA"),
      ),
      body: ListView(
        children: [
          imageSection,
          titleSection,
          descriptionSection,
          Container(
            padding: EdgeInsets.only(bottom: 24),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('Menu'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
