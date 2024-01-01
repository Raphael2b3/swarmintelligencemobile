import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/addbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/votebutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/taglist.dart';

class Statement extends StatelessWidget {
  final String text;

  const Statement({super.key, this.text = "Geiler scheiß"});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 13, top: 13),
      decoration: const BoxDecoration(
        border:
            Border(bottom: BorderSide(color: AppColors.secondary, width: 1)),
      ),
      child: Column(
        children: [
          Text(
            text,
          ),
          const SizedBox(
            height: 50,
          ),
          const TagList(tags: ["tag", "tag2"]),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Votebutton.up(
                    onClick: () {},
                  ),
                  AddButton(onPressed: () => {}),
                  Votebutton.down(onClick: () {})
                ]),
          )
        ],
      ),
    );
  }
}
