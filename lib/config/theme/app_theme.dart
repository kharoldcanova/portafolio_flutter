import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //texttheme
  TextTheme textTheme = GoogleFonts.poppinsTextTheme(
    const TextTheme(

    )
  );
  //theme function
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.blueAccent[700],
    textTheme: textTheme,
  );
}


  

