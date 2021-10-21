import 'package:demo/interfaces/sqlite_database.dart';
import 'package:demo/model/joueur.dart';

class MockDatabase implements Database {
  @override
  Player addPlayer(String name) {
    return Player(name: name);
  }

  @override
  Player? getPlayer(String name) {
    return Player(name: name);
  }
}
