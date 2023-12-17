import 'package:flutter/material.dart';

class Votebutton extends StatelessWidget {
  final Color? color;
  final String text;
  final void Function() onClick;

  const Votebutton(
      {super.key,
      this.color = Colors.grey,
      this.text = "",
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 100,
      child: Material(
          shadowColor: Colors.black,
          elevation: 6,
          borderRadius: BorderRadius.circular(10),
          color: color,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            splashColor: Colors.grey.shade400,
            onTap: onClick,
            child: Container(
              alignment: Alignment.center,
              child: Text(text, style: const TextStyle(color: Colors.black)),
            ),
          )),
    );
  }

  const Votebutton.up(
      {super.key,
      this.color = Colors.greenAccent,
      this.text = "True",
      required this.onClick});

  const Votebutton.down(
      {super.key,
      this.color = Colors.redAccent,
      this.text = "False",
      required this.onClick});
}
