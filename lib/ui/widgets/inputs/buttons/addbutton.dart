import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final void Function() onPressed;
  const AddButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 7)],
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey),
      child: IconButton(
        icon: const Icon(Icons.add),
        onPressed: onPressed,
      ),
    );
  }
}
