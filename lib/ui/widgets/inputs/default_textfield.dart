import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class DefaultTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;

  final TextEditingController controller;

  DefaultTextField({
    super.key,
    TextEditingController? controller,
    required this.hintText,
    this.obscureText = false,
  }) : controller = controller ?? TextEditingController();

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  void onTextChange() {
    setState(() {});
  }

  @override
  void initState() {
    widget.controller.addListener(onTextChange);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 40,
      decoration: const BoxDecoration(
          color: AppColors.highlightdark,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextField(
        obscureText: widget.obscureText,
        controller: widget.controller,
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(
          fontSize: 16,
          color: AppColors.primaryText,
        ),
        decoration: InputDecoration(
            suffixIcon: widget.controller.text.isNotEmpty
                ? IconButton(
                    onPressed: () => widget.controller.text = "",
                    icon: const Icon(
                      Icons.clear,
                      color: AppColors.primaryText,
                    ))
                : null,
            hintStyle: TextStyles.hintText,
            hintText: widget.hintText,
            contentPadding: const EdgeInsets.only(left: 13),
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
        cursorColor: AppColors.primaryText,
      ),
    );
  }
}
