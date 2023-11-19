import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/searchpage.dart';

void main() {
  runApp(const SafeArea(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Swarmintelligence Mobile",
      home: const Home(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[const SearchPage(), const Placeholder()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161616),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0x00000000),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.loupe_outlined),
            label: 'Statements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.loupe_outlined),
            label: 'Statements',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black26,
        onTap: _onItemTapped,
      ),
    );
  }
}
