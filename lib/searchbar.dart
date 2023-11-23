import 'package:flutter/material.dart';

import 'settingcircle.dart';

class Searchbar extends StatefulWidget {
  final Function(String) onSearch;

  const Searchbar(
    this.onSearch, {
    Key? key,
  }) : super(key: key);

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
                color: Color.fromRGBO(37, 37, 37, 1),
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
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
              cursorColor: const Color(0xFFFFFFFF),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
          height: 0,
          child: Stack(
            alignment: Alignment.centerRight,
            clipBehavior: Clip.none,
            children: [SettingCircle()],
          ),
        )
      ],
    );
  }
}
