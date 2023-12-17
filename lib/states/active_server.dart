import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/models/app.dart';

class ActiveServer extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  Server? _active;

  Server? get active => _active;

  set active(Server? value) {
    if (value == _active) return;
    _active = value;

    notifyListeners();
  }
}
