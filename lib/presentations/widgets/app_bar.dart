import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget implements PreferredSizeWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Portafolio',
      ),
      automaticallyImplyLeading: true,
      toolbarHeight: 100.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
