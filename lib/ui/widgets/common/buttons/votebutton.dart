import 'package:flutter/material.dart';

class Votebutton extends StatefulWidget {
  final Color? color;
  final String text;
  const Votebutton({Key? key, this.color, this.text = ""}) : super(key: key);

  @override
  State<Votebutton> createState() => _VotebuttonState();

  const Votebutton.up(
      {Key? key, this.color = Colors.greenAccent, this.text = "True"})
      : super(key: key);

  const Votebutton.down(
      {Key? key, this.color = Colors.redAccent, this.text = "False"})
      : super(key: key);
}

class _VotebuttonState extends State<Votebutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(10)),
      child: Text(widget.text, style: const TextStyle(color: Colors.black)),
    );
  }
}
