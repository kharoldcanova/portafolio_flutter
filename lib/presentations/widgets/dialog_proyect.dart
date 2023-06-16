import 'package:flutter/material.dart';
import 'package:portafolio_flutter/domain/entities/proyect.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('No se pudo abrir $url');
  }
}

void showProyectCard(BuildContext context, Proyect proyect) {
  const styleTitle = TextStyle(fontWeight: FontWeight.w800);
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        titlePadding: const EdgeInsets.all(30),
        title: Text(proyect.name),
        contentPadding: const EdgeInsets.all(30),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nombre del proyecto: ',
                  style: styleTitle,
                ),
                Flexible(child: Text(proyect.name))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lenguaje de programacion: ',
                  style: styleTitle,
                ),
                Flexible(child: Text(proyect.language))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Descripcion: ',
                  style: styleTitle,
                ),
                Flexible(child: Text(proyect.description))
              ],
            )
          ],
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
