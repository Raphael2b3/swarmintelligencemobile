import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class CathegoryButton extends StatelessWidget {
  final void Function() onClick;
  final String text;
  const CathegoryButton({super.key, required this.onClick, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Material(
        shape: const Border(
            bottom: BorderSide(
          color: Colors.grey,
          style: BorderStyle.solid,
        )),
        color: AppColors.highlightdark,
        child: InkWell(
          splashColor: Colors.grey.shade700,
          onTap: () {
            onClick();
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: Text(text, style: const TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
