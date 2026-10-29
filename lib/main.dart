import 'package:flutter/material.dart';
import 'hello_world.dart';
import 'column_widget.dart';
import 'row_widget.dart';
import 'ui/produk_form.dart';
import 'ui/produk_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pemrograman Mobile Flutter',
      debugShowCheckedModeBanner: false,
      home: HomeSelector(),
    );
  }
}

class HomeSelector extends StatefulWidget {
  HomeSelector({super.key});

  @override
  _HomeSelectorState createState() => _HomeSelectorState();
}

class _HomeSelectorState extends State<HomeSelector> {
  int _index = 0;
  final List<Widget> _pages = [
    HelloWorld(),
    ColumnWidget(),
    RowWidget(),
    ProdukForm(),
    ProdukPage(),
  ];
  final List<String> _titles = [
    'Hello World',
    'Column',
    'Row',
    'Form Produk',
    'Produk Page',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_index])),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Hello World'),
          BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted), label: 'Column'),
          BottomNavigationBarItem(icon: Icon(Icons.format_shapes), label: 'Row'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Form'),
          BottomNavigationBarItem(icon: Icon(Icons.view_list), label: 'Produk'),
        ],
      ),
    );
  }
}

