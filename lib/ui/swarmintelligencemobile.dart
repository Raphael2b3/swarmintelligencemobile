import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';
import 'package:swarmintelligencemobile/ui/screens/history.dart';
import 'package:swarmintelligencemobile/ui/screens/home.dart';
import 'package:swarmintelligencemobile/ui/screens/add_server.dart';
import 'package:swarmintelligencemobile/ui/screens/search.dart';
import 'package:swarmintelligencemobile/ui/screens/setting.dart';

class SwarmIntelligenceMobileApp extends StatelessWidget {
  const SwarmIntelligenceMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.black,
    ));
    return SafeArea(
      child: MaterialApp.router(
        title: "Swarmintelligence Mobile",
        routerConfig: _routes,
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: AppColors.primaryText, fontSize: 14),
          ),
        ),
      ),
    );
  }
}

final _routes = GoRouter(initialLocation: "/history", routes: [
  StatefulShellRoute.indexedStack(
      builder: (context, state, child) => Home(navShell: child),
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
            path: "/history",
            builder: (context, state) => const HistoryPage(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: "/search",
            builder: (context, state) => const SearchPage(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
              path: "/settings",
              builder: (context, state) => SettingPage(),
              routes: [
                GoRoute(
                  path: "addserver",
                  builder: (context, state) => const AddServerPage(),
                ),
              ])
        ])
      ])
]);
