import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/default_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/sub_card.dart';

class CathegoryCard extends StatefulWidget {
  final String title;
  final List<Widget> contents;
  const CathegoryCard({super.key, required this.title, required this.contents});

  @override
  State<CathegoryCard> createState() => _CathegoryCardState();
}

class _CathegoryCardState extends State<CathegoryCard> {
  bool expanded = false;
  void invertExpand() => expanded = !expanded;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(child: DefaultCard(children: [Text(widget.title)])),
        SubCard(children: widget.contents)
      ],
    );
  }
}
