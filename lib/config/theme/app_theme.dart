import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //texttheme
  TextTheme textTheme = GoogleFonts.poppinsTextTheme(
    const TextTheme(

    )
  );
  //theme function light
  ThemeData getLightTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorSchemeSeed: Colors.blueAccent[700],
    textTheme: textTheme,
  );

  //theme function light
  ThemeData getDarkTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.blueAccent[700],
    textTheme: textTheme,
  );
}


  

