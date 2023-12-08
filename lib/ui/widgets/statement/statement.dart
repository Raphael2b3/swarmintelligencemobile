import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/addbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/votebutton.dart';
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
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(13),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(37, 37, 37, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
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
          ),
        ),
      ],
    );
  }
}
