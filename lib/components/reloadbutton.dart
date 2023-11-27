import 'package:flutter/material.dart';

class ReloadButton extends StatefulWidget {
  const ReloadButton({super.key});

  @override
  State<ReloadButton> createState() => _ReloadButtonState();
}

class _ReloadButtonState extends State<ReloadButton> {
  @override
  Widget build(BuildContext context) {
    return Container(child: IconButton(icon: Icon(Icons.refresh), onPressed: ()=>(), ),);
  }
}