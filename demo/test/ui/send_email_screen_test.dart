import 'package:demo/ui/send_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets("Test email valide", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SendEmailScreen()));
    expect(find.text("Message envoyé"), findsNothing);

    await tester.enterText(find.byKey(const Key("email-field")), "ian@mq.com");
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    expect(find.text("Message envoyé à ian@mq.com"), findsOneWidget);
  });

  testWidgets("Test email invalide", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SendEmailScreen()));
    expect(find.text("Message envoyé"), findsNothing);

    await tester.enterText(find.byKey(const Key("email-field")), "ian-mq.com");
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(find.text("Email invalide"), findsOneWidget);
  });
}
