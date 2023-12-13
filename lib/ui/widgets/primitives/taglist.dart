import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/clickabletext.dart';

class TagList extends StatelessWidget {
  final List<String> tags;

  const TagList({super.key, this.tags = const []});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:
          tags.map((e) => ClickableText(text: "#$e ", onClick: () {})).toList(),
    );
  }
}
