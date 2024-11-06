// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:unitwidget/main.dart';

void main() {
  testWidgets('Test home page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('no data'), findsOneWidget);
    expect(find.text('welcome'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('welcome'), findsOneWidget);
  });
}
