import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class ClickableText extends StatefulWidget {
  final String text;
  final Function onClick;
  const ClickableText({super.key, required this.text, required this.onClick});

  @override
  State<ClickableText> createState() => _ClickableTextState();
}

class _ClickableTextState extends State<ClickableText> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.highlightdark,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(5),
        child: Text(
          widget.text,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
