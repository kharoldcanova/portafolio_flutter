import 'package:flutter/material.dart';

class AppTheme {
  //theme function
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.black
  );
}