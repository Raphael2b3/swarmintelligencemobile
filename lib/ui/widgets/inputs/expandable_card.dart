import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/clickable_card.dart';

class ExpandableCard extends StatefulWidget {
  final Widget child;
  final Widget hiddenchild;

  const ExpandableCard(
      {super.key, required this.child, required this.hiddenchild});

  @override
  State<ExpandableCard> createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool expanded = false;
  void expand() {
    setState(() {
      expanded = !expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClickableCard.coloumn(
        onClick: expand,
        children: [widget.child, if (expanded) widget.hiddenchild]);
  }
}
