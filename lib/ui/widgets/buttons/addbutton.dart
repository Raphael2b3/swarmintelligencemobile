import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  final void Function() onPressed;
  const AddButton({super.key, required this.onPressed});

  @override
  State<AddButton> createState() => AddButtonState();
}

class AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.grey),
      child: IconButton(
        icon: const Icon(Icons.add),
        onPressed: widget.onPressed,
      ),
    );
  }
}
