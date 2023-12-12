import 'package:flutter/cupertino.dart';

class UserAuth extends ChangeNotifier {
  bool _loggedIn = false;

  bool get loggedIn => _loggedIn;

  set loggedIn(bool value) {
    if (value == _loggedIn) return;

    _loggedIn = value;
    notifyListeners();
  }
}
