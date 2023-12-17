import 'dart:ffi';

import 'package:flutter/material.dart';

class App extends ChangeNotifier {
  // instanz ist die app
  List<Server>?
      connectons; //im local storage // wird angezeigt // ändert sich nur bei der anzeige
  Server?
      activeConnection; //im ram kann sich ändern // wird angezeigt // ändert sich für andere anzeigen
}

class Server extends ChangeNotifier {
  Server({this.name, this.auth, this.history});
  String? name;
  Auth? auth;
  History? history;
}

class Auth extends ChangeNotifier {
  Auth({this.url, this.acesstoken});
  String? url; // im ram, kann sich ändern
  String? acesstoken; //im ram, ändert sich!
}

class History extends ChangeNotifier {
  History({this.queries, this.interactions});
  List<Query>? queries; // im localstorage, ram,  ändern
  List<Interactable>? interactions; // im localstorage, ram, kann sich ändern
}

class Query {
  Query({this.orderby, this.queringString, this.tags});
  String? queringString; // im ram kann sich ändern

  List<String>? tags; // im ram kann sich ändern

  String? orderby; // im ram, ändert sich!
}

class Interactable {}

class HistoryStatement extends Interactable {
  HistoryStatement({this.id, this.text});
  Long? id; // im localstorage, ram, ändert sich nicht!
  String? text; // im localstorage, ram, ändert sich nicht!
}

class HistoryConnection extends Interactable {
  HistoryConnection({this.id, this.argument, this.thesis});
  Long? id; // im localstorage, ram, ändert sich nicht!
  HistoryStatement? thesis; // im localstorage, ram, ändert sich nicht!
  HistoryStatement? argument; // im localstorage, ram, ändert sich nicht!
}

class HistoryEquation extends Interactable {
  HistoryEquation({this.id, this.left, this.right});
  Long? id; // im localstorage, ram, ändert sich nicht!
  HistoryStatement? left; // im localstorage, ram, ändert sich nicht!
  HistoryStatement? right; // im localstorage, ram, ändert sich nicht!
}
