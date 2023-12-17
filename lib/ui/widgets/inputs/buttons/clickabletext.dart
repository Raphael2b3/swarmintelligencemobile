import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class ClickableText extends StatelessWidget {
  final String text;
  final void Function() onClick;
  const ClickableText({super.key, required this.text, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      borderRadius: BorderRadius.circular(5),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
