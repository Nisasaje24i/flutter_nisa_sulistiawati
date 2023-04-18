import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing/model/list_contact.dart';
import 'package:ui_testing/pages/form_contact.dart';
import 'package:ui_testing/model/input_decoration.dart';

void main() {
  testWidgets('Body form contact', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byType(Form), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.byType(ElevatedButton), findsNWidgets(2));
    expect(find.text('Submit'), findsOneWidget);
    expect(find.text('Update'), findsOneWidget);
  });
}
