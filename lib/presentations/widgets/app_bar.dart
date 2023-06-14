import 'package:flutter/material.dart';
import 'package:portafolio_flutter/presentations/providers/theme_provider.dart';
import 'package:portafolio_flutter/presentations/screens/login/login_screen.dart';
import 'package:portafolio_flutter/presentations/widgets/dialog_login.dart';
import 'package:provider/provider.dart';

class AppBarScreen extends StatelessWidget implements PreferredSizeWidget {
  const AppBarScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
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
                    showFloatingForm(context, const LoginScreen());
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
