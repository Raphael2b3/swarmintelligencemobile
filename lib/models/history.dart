import 'package:flutter/cupertino.dart';

/*
  History for:
    search queries
    votes
    clicked
*/
class HistoryList extends ChangeNotifier {
  final List<dynamic> _list = [];

  List<dynamic> get list => _list;

  void refresh() {
    bool changed = true;

    if (changed) {
      notifyListeners();
    }
  }

  void saveToCache() {
    bool changed = true;

    if (changed) {
      notifyListeners();
    }
  }

  void loadFromCache() {
    bool changed = true;

    if (changed) {
      notifyListeners();
    }
  }
}
