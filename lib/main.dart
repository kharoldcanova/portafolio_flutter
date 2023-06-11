import 'package:flutter/material.dart';
import 'package:portafolio_flutter/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Portafolio'),
        ),
        body: const Center(
          child: Text('Kharold Canova'),
        ),
      ),
    );
  }
}