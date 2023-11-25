import 'package:flutter/material.dart';

class Upvotebutton extends StatefulWidget {
  const Upvotebutton({Key? key}) : super(key: key);

  @override
  State<Upvotebutton> createState() => _UpvotebuttonState();
}

class _UpvotebuttonState extends State<Upvotebutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.greenAccent, borderRadius: BorderRadius.circular(10)),
    );
  }
}
