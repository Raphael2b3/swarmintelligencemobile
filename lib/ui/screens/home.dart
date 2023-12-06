import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';
import 'package:swarmintelligencemobile/ui/screens/search.dart';

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
