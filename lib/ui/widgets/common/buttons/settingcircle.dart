import 'package:flutter/material.dart';

class SettingCircle extends StatefulWidget {
  const SettingCircle({super.key});

  @override
  State<SettingCircle> createState() => _SettingCircleState();
}

class _SettingCircleState extends State<SettingCircle> {
  final double height = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: height,
      child: Stack(
        alignment: Alignment.centerRight,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            height: height,
            width: height,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
          )
        ],
      ),
    );
  }
}
