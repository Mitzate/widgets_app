import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.black,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.orange,
];

class AppTheme {
  final int selectdColor;

  AppTheme({required this.selectdColor});

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectdColor],
    appBarTheme: AppBarTheme(centerTitle: false),
  );
}
