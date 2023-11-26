import 'package:swarmintelligencemobile/styles.dart';
import 'package:swarmintelligencemobile/searchpage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.R
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Swarmintelligence Mobile",
      home: const SafeArea(child: Home()),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
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
      backgroundColor: AppColors.backgroundark,
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
        selectedItemColor: AppColors.highlightdark,
        onTap: _onItemTapped,
      ),
    );
  }
}
