// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:BSafe/auth/register.dart';
import 'package:flutter/material.dart';

void main() {

  testWidgets('verify registration text', (tester) async {
    await tester.pumpWidget(new Register());
    expect(find.text('Register to BSafe'), findsOneWidget);
  });

}
