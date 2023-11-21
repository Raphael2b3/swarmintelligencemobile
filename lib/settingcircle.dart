import 'package:flutter/material.dart';

class SettingCircle extends StatefulWidget {
  const SettingCircle({super.key});

  @override
  State<SettingCircle> createState() => _SettingCircleState();
}

class _SettingCircleState extends State<SettingCircle> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 80,
      width: 80,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.all(Radius.circular(40))),
      ),
    );
  }
}
