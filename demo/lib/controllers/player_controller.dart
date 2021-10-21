import 'package:demo/interfaces/sqlite_database.dart';
import 'package:demo/model/joueur.dart';

class PlayerController {
  final Database _db;

  PlayerController(this._db);

  Player? playerDidWinGame(String name) {
    final player = _db.getPlayer(name);
    player?.gameWon();
    return player;
  }
}
