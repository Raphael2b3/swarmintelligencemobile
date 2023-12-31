import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class ClickableCard extends StatelessWidget {
  final Widget child;
  final void Function() onClick;
  final BorderRadius borderRadius;

  final Color color;
  const ClickableCard(
      {super.key,
      required this.child,
      required this.onClick,
      this.borderRadius = const BorderRadius.all(Radius.circular(10)),
      this.color = AppColors.secondary});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Material(
        elevation: 6,
        shadowColor: Colors.black,
        color: color,
        borderRadius: borderRadius,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onClick,
          child: Container(
            padding: const EdgeInsets.all(13),
            child: child,
          ),
        ),
      ),
    );
  }
}
