import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/default_textfield.dart';

import 'buttons/settingcircle.dart';

class Searchbar extends StatelessWidget {
  final Function(String)? onSearch;

  const Searchbar({
    super.key,
    this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.centerRight,
      children: [
        DefaultTextField(
          hintText: "Search...",
        ),
        const SettingCircle()
      ],
    );
  }
}
