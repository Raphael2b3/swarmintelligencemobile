import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';
import 'package:swarmintelligencemobile/ui/widgets/default_textfield.dart';

import 'buttons/settingcircle.dart';

class Searchbar extends StatefulWidget {
  final Function(String)? onSearch;

  const Searchbar({
    super.key,
    this.onSearch,
  });

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  _SearchbarState();

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.centerRight,
      children: [DefaultTextField(), SettingCircle()],
    );
  }
}
