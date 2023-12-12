import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/query.dart';
import 'package:swarmintelligencemobile/ui/widgets/content_list.dart';
import 'package:swarmintelligencemobile/ui/widgets/statement/statementmoreoptions.dart';
import 'package:swarmintelligencemobile/ui/widgets/cathegoryselector.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/reloadbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/searchbar.dart';
import 'package:swarmintelligencemobile/constants/settings.dart';

import '../../widgets/statement/statement.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void onFilterChange(int state) {}

  void onSearch(String query) {}

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Searchbar(),
        Cathegoryselector(
          cathegories: Settings.cathegories,
          extraWidget: ReloadButton(),
        ),
        ContentList()
      ],
    );
  }
}
