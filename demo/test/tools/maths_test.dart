import 'package:demo/tools/maths.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Test CalculPuissance', () {
    expect(calculPuissance(4, 2), 16);
    expect(calculPuissance(3, 4), 81);
    expect(calculPuissance(3, 0), 1);
    expect(calculPuissance(3, -1), closeTo(0.333, 0.001));
  });
}
