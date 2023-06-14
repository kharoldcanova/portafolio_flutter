import 'package:flutter/material.dart';

  //show dialog login
  void showFloatingForm(BuildContext context,  Widget widget) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          title: const Text(
            'Iniciar Sesión',
            textAlign: TextAlign.center,
          ),
          titlePadding: const EdgeInsets.only(top: 50),
          contentPadding: const EdgeInsets.all(30),
          content: SizedBox(width: 450, height: 250, child: widget),
        );
      },
    );
  }



