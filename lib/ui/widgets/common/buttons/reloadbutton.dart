import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class ReloadButton extends StatefulWidget {
  const ReloadButton({super.key});

  @override
  State<ReloadButton> createState() => _ReloadButtonState();
}

class _ReloadButtonState extends State<ReloadButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7, top: 7, left: 5),
      decoration: BoxDecoration(
          color: AppColors.highlightdark,
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        icon: const Icon(Icons.refresh),
        onPressed: () => (),
      ),
    );
  }
}
