import 'package:flutter/material.dart';

class SettingCircle extends StatefulWidget {
  const SettingCircle({super.key});

  @override
  State<SettingCircle> createState() => _SettingCircleState();
}

class _SettingCircleState extends State<SettingCircle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 15,
      height: 0,
      child: Stack(
        alignment: Alignment.centerRight,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            height: 50,
            width: 50,
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
