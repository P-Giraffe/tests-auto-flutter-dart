import 'package:demo/model/joueur.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  setUpAll(() {
    print("setUpAll");
  });

  tearDownAll(() {
    print("tearDownAll");
  });

  group('Parties', () {
    setUp(() {
      print("Avant chaque test");
    });

    tearDown(() {
      print("Après chaque test");
    });
    test('Test partie gagnée', () {
      final j1 = Player(name: "Ted Lasso");
      expect(j1.score, 0);
      j1.gameWon();
      expect(j1.score, 30);
      j1.gameWon();
      expect(j1.score, 60);
    });

    test('Test partie perdue', () {
      final j1 = Player(name: "Ted Lasso");
      j1.score = 50;
      j1.gameLost();
      expect(j1.score, 20);
      j1.gameLost();
      expect(j1.score, 0);
      j1.gameLost();
      expect(j1.score, 0);
    });
  });
}
