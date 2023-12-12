import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';
import 'package:swarmintelligencemobile/models/UserAuth.dart';

class Home extends StatefulWidget {
  final Widget child;
  final int cIndex;
  const Home({super.key, required this.child, required this.cIndex});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void changeTab(int index) {
    switch (index) {
      case 0:
        context.go('/history');
        break;
      case 1:
        context.go('/search');
        break;
      default:
        context.go('/settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = const [
      BottomNavigationBarItem(
        icon: Icon(Icons.history),
        label: 'History',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
    ];

    return ChangeNotifierProvider<UserAuth>(
      create: (context) => UserAuth(),
      child: Scaffold(
        backgroundColor: AppColors.backgroundark,
        body: Container(margin: const EdgeInsets.all(13), child: widget.child),
        bottomNavigationBar: BottomNavigationBar(
          onTap: changeTab,
          currentIndex: widget.cIndex,
          backgroundColor: const Color(0x00000000),
          items: items,
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
