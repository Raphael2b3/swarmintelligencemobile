import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/addbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/votebutton.dart';

class StatementMoreOptions extends StatelessWidget {
  const StatementMoreOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        const Text(
          "widget.text",
        ),
        Row(
          children: [
            Votebutton.up(
              onClick: () {},
            ),
            AddButton(onPressed: () => {}),
            Votebutton.down(onClick: () {}),
          ],
        )
      ],
    ));
  }
}
