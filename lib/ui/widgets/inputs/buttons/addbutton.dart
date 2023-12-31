import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class AddButton extends StatelessWidget {
  final void Function() onPressed;
  const AddButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.highlightdark,
        borderRadius: BorderRadius.circular(40),
      ),
      child: IconButton(
        alignment: Alignment.center,
        color: AppColors.primaryText,
        icon: const Icon(Icons.add, color: AppColors.primaryText),
        onPressed: onPressed,
      ),
    );
  }
}
