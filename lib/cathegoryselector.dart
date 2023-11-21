import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/settings.dart';

class Cathegoryselector extends StatefulWidget {
  const Cathegoryselector({Key? key}) : super(key: key);

  @override
  State<Cathegoryselector> createState() => _CathegoryselectorState();
}

class _CathegoryselectorState extends State<Cathegoryselector> {
  List<Widget> cathegories = Settings.cathegories
      .map((e) => Text(
            e,
            textAlign: TextAlign.center,
          ))
      .toList();
  int count = Settings.cathegories.length;
  int index = 0;
  void changeIndex(i) {
    setState(() {
      index = i % count;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            height: 2,
          ),
        ),
        IconButton(
          onPressed: () => {changeIndex(index + 1)},
          icon: const Icon(Icons.arrow_right),
        ),
        cathegories[index],
        IconButton(
            alignment: Alignment.topCenter,
            onPressed: () => {changeIndex(index - 1)},
            icon: const Icon(
              Icons.arrow_left,
            )),
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
