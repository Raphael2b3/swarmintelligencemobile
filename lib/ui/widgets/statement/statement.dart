import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/addbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/votebutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/default_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/taglist.dart';

class Statement extends StatefulWidget {
  final String text;

  const Statement({super.key, this.text = "Geiler scheiß"});

  @override
  State<Statement> createState() => _StatementState();
}

class _StatementState extends State<Statement> {
  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      children: [
        Text(
          widget.text,
        ),
        const TagList(tags: ["tag", "tag2"]),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Votebutton.up(),
                AddButton(onPressed: () => {}),
                const Votebutton.down()
              ]),
        )
      ],
    );
  }
}
