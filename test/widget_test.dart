// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:onebutton/main.dart';

void main() {
  testWidgets('Button renders and does nothing when tapped',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify the button is present.
    expect(find.text('Press me'), findsOneWidget);

    // Tap the button and trigger a frame.
    await tester.tap(find.text('Press me'));
    await tester.pump();

    // Verify the button is still there and nothing changed.
    expect(find.text('Press me'), findsOneWidget);
  });
}
