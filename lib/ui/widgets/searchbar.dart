import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';

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
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(
              right: 30,
            ),
            alignment: Alignment.centerLeft,
            height: 40,
            decoration: const BoxDecoration(
                color: AppColors.highlightdark,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.clear,
                      )),
                  hintStyle: const TextStyle(color: Colors.grey),
                  hintText: "Search...",
                  contentPadding: const EdgeInsets.only(
                    left: 13,
                  ),
                  border:
                      const OutlineInputBorder(borderSide: BorderSide.none)),
              cursorColor: const Color(0xFFFFFFFF),
            ),
          ),
        ),
        const SettingCircle()
      ],
    );
  }
}
