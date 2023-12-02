import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/components/Statement/addbutton.dart';
import 'package:swarmintelligencemobile/components/Statement/statementmoreoptions.dart';
import 'package:swarmintelligencemobile/components/cathegoryselector.dart';
import 'package:swarmintelligencemobile/components/reloadbutton.dart';
import 'package:swarmintelligencemobile/components/searchbar.dart';
import 'package:swarmintelligencemobile/settings.dart';

import 'components/Statement/statement.dart';

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
