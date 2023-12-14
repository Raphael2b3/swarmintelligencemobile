import 'dart:ffi';

class App {
  List<Server>? connectons;
  Server? activeConnection;
}

class Server {
  Auth? auth;
  History? history;
}

class Auth {
  String? acesstoken;
}

class History {
  List<Query>? queries;
  List<Interactable>? interactions;
}

class Query {
  String? queringString;

  List<String>? tags;

  String? orderby;
}

class Interactable {}

class HistoryStatement extends Interactable {
  Long? id;
  String? text;
}

class HistoryConnection extends Interactable {
  Long? id;
  HistoryStatement? thesis;
  HistoryStatement? argument;
}

class HistoryEquation extends Interactable {
  Long? id;
  HistoryStatement? left;
  HistoryStatement? right;
}
