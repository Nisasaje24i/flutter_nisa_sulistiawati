import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing/pages/form_contact.dart';

void main() {
  testWidgets('Judul harus contacts', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: MyApp(),
      ),
    );
    expect(find.text('Contacts'), findsOneWidget);
  });
}
