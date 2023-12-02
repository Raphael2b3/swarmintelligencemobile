import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  final List<String> tags;

  const TagList({super.key, this.tags = const []});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: tags.map((e) => TagText(e)).toList(),
    );
  }
}

class TagText extends StatelessWidget {
  final String tag;
  const TagText(this.tag, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text("#$tag");
  }
}
