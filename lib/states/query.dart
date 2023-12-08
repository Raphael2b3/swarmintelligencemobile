import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/settings.dart';

class QueryState with ChangeNotifier {
  String _queryString;

  String get queryString => _queryString;

  set queryString(String value) {
    _queryString = value;
    notifyListeners();
  }

  List<String> _tags;

  List<String> get tags => _tags;

  set tags(List<String> value) {
    _tags = value;
    notifyListeners();
  }

  String _sortingMode;

  String get sortingMode => _sortingMode;

  set sortingMode(String value) {
    _sortingMode = value;
    notifyListeners();
  }

  QueryState(
      {required String queryString,
      required List<String> tags,
      required String sortingMode})
      : _sortingMode = sortingMode,
        _tags = tags,
        _queryString = queryString;

  factory QueryState.fromStorage() {
    return QueryState(
        queryString: "cached query",
        tags: ["tags", "sfklsn", "kfkjd"],
        sortingMode: Settings.cathegories[0]);
  }
}
