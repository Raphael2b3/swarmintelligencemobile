import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class SettingCircle extends StatelessWidget {
  const SettingCircle({super.key});

  final double height = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
          color: AppColors.secondary, borderRadius: BorderRadius.circular(40)),
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
