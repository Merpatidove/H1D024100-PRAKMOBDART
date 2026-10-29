import 'package:flutter/material.dart';

class ProdukPage extends StatelessWidget {
  const ProdukPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produk')),
      body: ListView(
        children: <Widget>[
          _produkCard(Icons.store, 'Produk 1', 'Deskripsi produk 1'),
          _produkCard(Icons.store, 'Produk 2', 'Deskripsi produk 2'),
          _produkCard(Icons.store, 'Produk 3', 'Deskripsi produk 3'),
        ],
      ),
    );
  }

  Card _produkCard(IconData icon, String title, String subtitle) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
