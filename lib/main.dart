import 'package:flutter/material.dart';
import 'package:portafolio_flutter/config/theme/app_theme.dart';
import 'package:portafolio_flutter/presentations/screens/banner/banner_screen.dart';
import 'package:portafolio_flutter/presentations/screens/portafolio_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const PortafolioScreen()
    );
  }
}