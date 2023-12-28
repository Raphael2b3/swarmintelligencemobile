import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class AddButton extends StatelessWidget {
  final void Function() onPressed;
  const AddButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: AppColors.primaryText,
      icon: const Icon(Icons.add),
      onPressed: onPressed,
    );
  }
}
