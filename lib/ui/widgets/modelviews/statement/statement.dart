import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/addbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/votebutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/default_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/taglist.dart';

class Statement extends StatelessWidget {
  final String text;

  const Statement({super.key, this.text = "Geiler scheiß"});

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      children: [
        Text(
          text,
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
