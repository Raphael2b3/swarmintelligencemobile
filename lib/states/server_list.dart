import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/models/app.dart';

class ServerList extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  List<Server> servers = [
    Server(name: "Server1"),
    Server(name: "Server2"),
    Server(name: "Server3")
  ];
}
