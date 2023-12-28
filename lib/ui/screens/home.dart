import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';
import 'package:swarmintelligencemobile/models/app.dart';
import 'package:swarmintelligencemobile/states/active_server.dart';

class Home extends StatelessWidget {
  final StatefulNavigationShell navShell;
  const Home({super.key, required this.navShell});

  void changeTab(int index) {
    navShell.goBranch(index, initialLocation: index == navShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    ChangeNotifierProvider<History> history = ChangeNotifierProvider<History>(
        create: (context) => History(queries: null, interactions: null));
    ChangeNotifierProvider<ActiveServer> activeserver =
        ChangeNotifierProvider<ActiveServer>(
      create: (context) => ActiveServer(),
      //update: (BuildContext context, value, previous) {},
    );

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

    return MultiProvider(
      providers: [history, activeserver],
      child: Scaffold(
        backgroundColor: AppColors.backgroundark,
        body: Container(margin: const EdgeInsets.all(13), child: navShell),
        bottomNavigationBar: BottomNavigationBar(
          onTap: changeTab,
          currentIndex: navShell.currentIndex,
          backgroundColor: Colors.transparent,
          items: items,
          unselectedItemColor: AppColors.secondary,
          selectedItemColor: AppColors.primaryText,
        ),
      ),
    );
  }
}
