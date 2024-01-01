import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/settings.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

class CathegorySelector extends StatefulWidget {
  final List<String> cathegories = Settings.cathegories;

  const CathegorySelector({super.key});

  @override
  State<CathegorySelector> createState() => _CathegoryselectorState();
}

class _CathegoryselectorState extends State<CathegorySelector> {
  int index = 0;

  void changeIndex(i) {
    if (0 > i || i >= widget.cathegories.length) return;

    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        height: 30,
        decoration: const BoxDecoration(
          color: AppColors.highlightdark,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  color: AppColors.secondary,
                  onPressed: () => {changeIndex(index + 1)},
                  icon: const Icon(Icons.arrow_left),
                ),
              ),
              Container(
                constraints: const BoxConstraints(minWidth: 100),
                child: Text(
                  widget.cathegories[index],
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    color: AppColors.secondary,
                    onPressed: () => {changeIndex(index - 1)},
                    icon: const Icon(
                      Icons.arrow_right,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
