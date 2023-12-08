import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/clickabletext.dart';

class TagList extends StatefulWidget {
  final List<String> tags;

  const TagList({super.key, this.tags = const []});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: widget.tags
          .map((e) => ClickableText(text: "#$e ", onClick: () {}))
          .toList(),
    );
  }
}
