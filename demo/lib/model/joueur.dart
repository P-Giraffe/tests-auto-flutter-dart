import 'dart:math';

class Player {
  final String name;
  var score = 0;

  Player({required this.name});
  gameWon() {
    score += 30;
  }

  gameLost() {
    score = score - min(score, 30);
  }
}
