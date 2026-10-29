// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:belajarflutter_dua/hello_world.dart';
import 'package:belajarflutter_dua/column_widget.dart';
import 'package:belajarflutter_dua/row_widget.dart';
import 'package:belajarflutter_dua/ui/produk_form.dart';
import 'package:belajarflutter_dua/ui/produk_page.dart';

void main() {
  testWidgets('the five examples build without throwing', (WidgetTester tester) async {
    await _pump(tester, const HelloWorld());
    expect(find.text('Hello, World!'), findsOneWidget);

    await _pump(tester, const ColumnWidget());
    expect(find.text('Baris 1'), findsOneWidget);

    await _pump(tester, const RowWidget());
    expect(find.byIcon(Icons.star), findsNWidgets(3));

    await _pump(tester, const ProdukPage());
    expect(find.text('Produk 1'), findsOneWidget);

    await _pump(tester, ProdukForm());
    expect(find.text('Form Produk'), findsOneWidget);
  });
}

Future<void> _pump(WidgetTester tester, Widget widget) async {
  await tester.pumpWidget(MaterialApp(home: widget));
}
