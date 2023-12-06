import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/components/ui/buttons/addbutton.dart';
import 'package:swarmintelligencemobile/components/statement/statementmoreoptions.dart';
import 'package:swarmintelligencemobile/components/ui/cathegoryselector.dart';
import 'package:swarmintelligencemobile/components/ui/buttons/reloadbutton.dart';
import 'package:swarmintelligencemobile/components/ui/searchbar.dart';
import 'package:swarmintelligencemobile/settings.dart';

import '../statement/statement.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void onFilterChange(int state) {}

  void onSearch(String query) {}

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      child: Column(
        children: [
          const Searchbar(),
          const Cathegoryselector(
            cathegories: Settings.cathegories,
            extraWidget: ReloadButton(),
          ),
          Expanded(
            child: ListView(
              children: const [
                StatementMoreOptions(),
                Statement(),
                Statement(text: "bin ich mal gespannt"),
                Statement(),
                Statement(text: "bin ich mal gespannt"),
                Statement(),
                Statement(text: "bin ich mal gespannt"),
                Statement(),
                Statement(text: "bin ich mal gespannt"),
                Statement(),
                Statement(text: "bin ich mal gespannt"),
                Statement(),
                Statement(text: "bin ich mal gespannt"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
