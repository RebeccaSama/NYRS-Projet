import 'package:flutter/material.dart';

class testPage extends StatefulWidget {
  const testPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _testPageState createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Page d\'accueil',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Messages',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Profil',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
