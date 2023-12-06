import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/components/ui/buttons/addbutton.dart';
import 'package:swarmintelligencemobile/components/ui/buttons/votebutton.dart';

class StatementMoreOptions extends StatefulWidget {
  const StatementMoreOptions({super.key});

  @override
  State<StatementMoreOptions> createState() => _StatementMoreOptionsState();
}

class _StatementMoreOptionsState extends State<StatementMoreOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(100),
      padding: const EdgeInsets.all(13),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(37, 37, 37, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
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
      ),
    );
  }
}
