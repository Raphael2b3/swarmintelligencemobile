import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/clickable_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/expandable_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/default_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/sub_card.dart';

class CathegoryCard extends StatelessWidget {
  final Widget title;
  final List<Widget> contents;
  const CathegoryCard({super.key, required this.title, required this.contents});

  @override
  Widget build(BuildContext context) {
    return ExpandableCard(
        hiddenchild: Column(children: contents), child: title);
  }
}
