import 'package:flutter/material.dart';
import 'package:portafolio_flutter/config/theme/app_theme.dart';
import 'package:portafolio_flutter/presentations/providers/proyect_provider.dart';
import 'package:portafolio_flutter/presentations/providers/theme_provider.dart';
import 'package:portafolio_flutter/presentations/screens/portafolio_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ThemeProvider())
      ],
      child: const MaterialAppHome(),
    );
  }
}

class MaterialAppHome extends StatelessWidget {
  const MaterialAppHome({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
  final theme = context.watch<ThemeProvider>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_)=> ProyectProvider()..loadProyects())
      ],
      child: MaterialApp(
        title: 'Portafolio',
        debugShowCheckedModeBanner: false,
        theme: theme.isDarkMode ? AppTheme().getDarkTheme() :AppTheme().getLightTheme(),
        home: const PortafolioScreen()
      ),
    );
  }
}