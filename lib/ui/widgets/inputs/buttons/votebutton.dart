import 'package:flutter/material.dart';

class Votebutton extends StatelessWidget {
  final Color? color;
  final String text;
  const Votebutton({super.key, this.color, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Text(text, style: const TextStyle(color: Colors.black)),
    );
  }

  const Votebutton.up(
      {super.key, this.color = Colors.greenAccent, this.text = "True"});

  const Votebutton.down(
      {super.key, this.color = Colors.redAccent, this.text = "False"});
}
