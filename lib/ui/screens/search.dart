import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/content_list.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/cathegory_selector.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/searchbar.dart';
import 'package:swarmintelligencemobile/constants/settings.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Searchbar(),
        CathegorySelector(
          cathegories: Settings.cathegories,
        ),
        ContentList()
      ],
    );
  }
}
