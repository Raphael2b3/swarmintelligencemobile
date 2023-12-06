import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/screens/home.dart';

class SwarmIntelligenceMobileApp extends StatelessWidget {
  const SwarmIntelligenceMobileApp({super.key});

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
