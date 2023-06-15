import 'package:flutter/material.dart';
import 'package:portafolio_flutter/domain/entities/proyect.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('No se pudo abrir $url');
  }
}

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
          FilledButton(
            onPressed: () {
              _launchURL(proyect.linkUrl);
            },
            child: const Text('Ir a repositorio'),
          ),
        ],
      );
    },
  );
}
