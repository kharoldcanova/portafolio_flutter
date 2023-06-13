import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  final Color colorTheme = Colors.greenAccent;
  //texttheme
  TextTheme textTheme = GoogleFonts.poppinsTextTheme(
    const TextTheme(
    
    )
  );

  //theme function light
  ThemeData getLightTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorSchemeSeed: colorTheme,
    textTheme: textTheme,
  );

  //theme function light
  ThemeData getDarkTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: colorTheme,
    textTheme: textTheme,
  );
}


  

