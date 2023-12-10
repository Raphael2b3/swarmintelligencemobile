import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

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
      height: height,
      width: height,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(40)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(40),
          onTap: () {
            context.go("/settings");
          },
          highlightColor: Colors.white,
          splashColor: Colors.white,
        ),
      ),
    );
  }
}
