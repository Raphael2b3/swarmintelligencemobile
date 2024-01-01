import 'package:flutter/material.dart';

class CathegoryCard extends StatelessWidget {
  final Widget title;
  final List<Widget> contents;
  const CathegoryCard({super.key, required this.title, required this.contents});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [title, Column(children: contents)],
    ));
  }
}
