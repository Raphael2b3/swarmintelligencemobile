import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/settings.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class Cathegoryselector extends StatefulWidget {
  final List<String> cathegories;
  final Widget extraWidget;
  const Cathegoryselector(
      {Key? key,
      required this.cathegories,
      this.extraWidget = const SizedBox.shrink()})
      : super(key: key);

  @override
  State<Cathegoryselector> createState() => _CathegoryselectorState();
}

class _CathegoryselectorState extends State<Cathegoryselector> {
  int index = 0;

  void changeIndex(i) {
    if (0 > i || i >= widget.cathegories.length) return;

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
              Container(
                constraints: const BoxConstraints(minWidth: 100),
                child: Text(
                  widget.cathegories[index],
                  textAlign: TextAlign.center,
                ),
              ),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  height: 2,
                ),
              ),
              widget.extraWidget
            ],
          ),
        ),
      ],
    );
  }
}
