import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class DefaultTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  const DefaultTextField(
      {super.key, required this.hintText, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

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
        obscureText: obscureText,
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () => controller.text = "",
                icon: const Icon(
                  Icons.clear,
                )),
            hintStyle: const TextStyle(color: Colors.grey),
            hintText: hintText,
            contentPadding: const EdgeInsets.only(left: 13),
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
        cursorColor: const Color(0xFFFFFFFF),
      ),
    );
  }
}
