import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class DefaultTextField extends StatelessWidget {
  final void Function() onClick;
  const DefaultTextField({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 45,
      ),
      alignment: Alignment.centerLeft,
      height: 40,
      decoration: const BoxDecoration(
          color: AppColors.highlightdark,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: onClick,
                icon: const Icon(
                  Icons.clear,
                )),
            hintStyle: const TextStyle(color: Colors.grey),
            hintText: "Search...",
            contentPadding: const EdgeInsets.only(left: 13),
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
        cursorColor: const Color(0xFFFFFFFF),
      ),
    );
  }
}
