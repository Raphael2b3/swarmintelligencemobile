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
      child: const Text("True", style: TextStyle(color: Colors.black)),
    );
  }
}



class Downvotebutton extends StatefulWidget {
  const Downvotebutton({Key? key}) : super(key: key);

  @override
  State<Downvotebutton> createState() => _DownvotebuttonState();
}

class _DownvotebuttonState extends State<Downvotebutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 40,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.redAccent, borderRadius: BorderRadius.circular(10)),
      child: const Text("False", style: TextStyle(color: Colors.black)),
    );
  }
}
