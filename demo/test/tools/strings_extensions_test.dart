import 'package:flutter_test/flutter_test.dart';
import 'package:demo/tools/strings_extensions.dart';

main() {
  test("Test isValidEmail", () {
    expect("ian@mq.com".isValidEmail, true);
    expect("ian-mq.com".isValidEmail, false);
    expect("ian@mqcom".isValidEmail, false);
    expect("ian+alias@mq.com".isValidEmail, true);
  });
}
