import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/cathegoryselector.dart';
import 'package:swarmintelligencemobile/searchbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      child: const Column(
        children: [Searchbar(), Cathegoryselector()],
      ),
    );
  }
}
