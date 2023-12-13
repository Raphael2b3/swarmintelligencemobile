import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';
import 'package:swarmintelligencemobile/states/userauth.dart';

class Home extends StatelessWidget {
  final StatefulNavigationShell navShell;
  const Home({super.key, required this.navShell});

  void changeTab(int index) {
    navShell.goBranch(index, initialLocation: index == navShell.currentIndex);
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
        body: Container(margin: const EdgeInsets.all(13), child: navShell),
        bottomNavigationBar: BottomNavigationBar(
          onTap: changeTab,
          currentIndex: navShell.currentIndex,
          backgroundColor: const Color(0x00000000),
          items: items,
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
