import 'package:demo/model/joueur.dart';

abstract class Database {
  Player addPlayer(String name);
  Player? getPlayer(String name);
}

class SQLiteDatabase implements Database {
  @override
  Player addPlayer(String name) {
    Player newPlayer = Player(name: name);
    //ajouter ce joueur à la base de données SQLite
    return newPlayer;
  }

  @override
  Player? getPlayer(String name) {
    //charger ce joueur depuis la base de données SQLite
    return null;
  }
}
