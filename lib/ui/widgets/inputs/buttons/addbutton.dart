import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class AddButton extends StatelessWidget {
  final void Function() onPressed;
  const AddButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          boxShadow: const [BoxShadow(color: AppColors.black, blurRadius: 7)],
          borderRadius: BorderRadius.circular(25),
          color: AppColors.secondary),
      child: IconButton(
        icon: const Icon(Icons.add),
        color: AppColors.highlightdark,
        onPressed: onPressed,
      ),
    );
  }
}
