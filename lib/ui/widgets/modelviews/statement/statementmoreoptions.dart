import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/addbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/votebutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/default_card.dart';

class StatementMoreOptions extends StatelessWidget {
  const StatementMoreOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      children: [
        const Text(
          "widget.text",
        ),
        Row(
          children: [
            const Votebutton.up(),
            AddButton(onPressed: () => {}),
            const Votebutton.down(),
          ],
        )
      ],
    );
  }
}