import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing/pages/homepage.dart';

void main() {
  testWidgets('Testing UI', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: MyHomePage(),
      ),
    );
    expect(find.text('My Home Page'), findsOneWidget);

    expect(find.text('Welcome to my home page!'), findsOneWidget);
    expect(find.byType(Center), findsOneWidget);
  });
}
