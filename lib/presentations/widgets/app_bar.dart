import 'package:flutter/material.dart';
import 'package:portafolio_flutter/config/theme/app_theme.dart';
import 'package:portafolio_flutter/presentations/providers/theme_provider.dart';
import 'package:portafolio_flutter/presentations/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

class AppBarScreen extends StatelessWidget implements PreferredSizeWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  //show dialog login
  void _mostrarFormularioFlotante(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text(
            'Iniciar Sesión',
            textAlign: TextAlign.center,
          ),
          titlePadding: EdgeInsets.only(top: 50),
          contentPadding: EdgeInsets.all(30),
          content: SizedBox(width: 450, height: 250, child: LoginScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);

    return AppBar(
      title: const Text(
        'Portafolio',
      ),
      automaticallyImplyLeading: true,
      toolbarHeight: 100.0,
      actions: [
        IconButton(
            onPressed: () {
              final themeModel = context.read<ThemeProvider>();
              themeModel.toggleTheme();
            },
            icon: Icon(
              context.watch<ThemeProvider>().isDarkMode ? Icons.light_mode : Icons.dark_mode,
            ),),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              FilledButton(
                  onPressed: () {
                    _mostrarFormularioFlotante(context);
                  },
                  child: const Text('Iniciar Sesion')),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
