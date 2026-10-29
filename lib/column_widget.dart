import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Baris 1'),
        Text('Baris 2'),
        Text('Baris 3'),
        Text('Baris 4'),
      ],
    );
  }
}
