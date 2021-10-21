import 'package:demo/controllers/player_controller.dart';
import 'package:flutter_test/flutter_test.dart';

import '../interfaces/mock_database.dart';

main() {
  test('Test player did win game', () {
    final playerController = PlayerController(MockDatabase());
    final player = playerController.playerDidWinGame("Ted Lasso");
    expect(player, isNotNull);
    expect(player?.score, 30);
  });
}
