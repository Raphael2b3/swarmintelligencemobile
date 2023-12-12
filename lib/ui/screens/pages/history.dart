import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/query.dart';
import 'package:swarmintelligencemobile/ui/widgets/statement/statementmoreoptions.dart';
import 'package:swarmintelligencemobile/ui/widgets/cathegoryselector.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/reloadbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/searchbar.dart';
import 'package:swarmintelligencemobile/constants/settings.dart';

import '../../widgets/statement/statement.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  void onFilterChange(int state) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      child: const Column(
        children: [Text("data"), Text("data"), Text("data")],
      ),
    );
  }
}
