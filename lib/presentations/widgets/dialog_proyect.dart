import 'package:flutter/material.dart';
import 'package:portafolio_flutter/domain/entities/proyect.dart';

void showProyectCard(BuildContext context, Proyect proyect) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        icon: const Icon(Icons.work),
        titlePadding: const EdgeInsets.only(top: 50),
        title: Text(proyect.name),
        contentPadding: const EdgeInsets.all(30),
        content: ListTile(
          subtitle: Text(proyect.description),
        ),
        actions: [
          FilledButton(onPressed: () {}, child: const Text('Ir a repositorio')),
        ],
      );
    },
  );
}
