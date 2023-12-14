import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class CathegoryButton extends StatelessWidget {
  final void Function() onClick;
  final String text;
  const CathegoryButton({super.key, required this.onClick, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(bottom: 5),
      width: double.infinity,
      child: Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(10),
        color: AppColors.highlightdark,
        child: InkWell(
          splashColor: Colors.grey.shade700,
          onTap: () {
            onClick();
          },
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: Text(text, style: const TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
