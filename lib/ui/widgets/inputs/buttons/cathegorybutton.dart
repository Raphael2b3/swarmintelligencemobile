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
        color: AppColors.backgroundark,
        child: InkWell(
          splashColor: AppColors.highlightdark,
          onTap: () {
            onClick();
          },
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.secondary),
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
