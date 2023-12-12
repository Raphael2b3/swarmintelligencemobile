import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class CathegoryButton extends StatefulWidget {
  final void Function() onClick;
  final String text;
  const CathegoryButton({super.key, required this.onClick, required this.text});

  @override
  State<CathegoryButton> createState() => _CathegoryButtonState();
}

class _CathegoryButtonState extends State<CathegoryButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onClick();
        print("debug");
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 1),
        height: 50,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 10),
        width: double.infinity,
        color: AppColors.highlightdark,
        child: Text(widget.text, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
