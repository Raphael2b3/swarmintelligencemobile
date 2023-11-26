import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/styles.dart';
import 'package:swarmintelligencemobile/settings.dart';

class Cathegoryselector extends StatefulWidget {
  const Cathegoryselector({Key? key}) : super(key: key);

  @override
  State<Cathegoryselector> createState() => _CathegoryselectorState();
}

class _CathegoryselectorState extends State<Cathegoryselector> {
  List<Widget> cathegories = Settings.cathegories
      .map((e) => Container(
            constraints: const BoxConstraints(minWidth: 100),
            child: Text(
              e,
              textAlign: TextAlign.center,
            ),
          ))
      .toList();
  int count = Settings.cathegories.length;
  int index = 0;
  void changeIndex(i) {
    if (0 > i || i >= count) return;

    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            height: 2,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          height: 30,
          decoration: const BoxDecoration(
            color: AppColors.highlightdark,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            children: [
              IconButton(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(0),
                onPressed: () => {changeIndex(index + 1)},
                icon: const Icon(Icons.arrow_right),
              ),
              cathegories[index],
              IconButton(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(0),
                  onPressed: () => {changeIndex(index - 1)},
                  icon: const Icon(
                    Icons.arrow_left,
                  )),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            height: 2,
          ),
        ),
      ],
    );
  }
}
