import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/models/app.dart';

class ServerList extends ChangeNotifier {
  ServerList({String activeurl = ""}) {
    sortServer(activeurl);
  }
  // ignore: non_constant_identifier_names
  List<Server> servers = [
    Server(name: "Server1"),
    Server(name: "Server2"),
    Server(name: "Server3")
  ];

  void sortServer(String url) {
    int i = -1;
    for (var server in servers) {
      i++;
      if (server.name == url) break;
    }
    var server = servers.removeAt(i);
    servers.insert(0, server);
  }
}
