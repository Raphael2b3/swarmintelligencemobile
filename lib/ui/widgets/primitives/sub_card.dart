import 'package:flutter/material.dart';

class SubCard extends StatelessWidget {
  final List<Widget> children;
  const SubCard({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(top: 13, left: 26, bottom: 13, right: 13),
      alignment: Alignment.topLeft,
      color: Colors.grey.shade800,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: children),
    );
  }
}
