import 'package:flutter/material.dart';
import 'package:portafolio_flutter/domain/entities/proyect.dart';
import 'package:portafolio_flutter/presentations/providers/proyect_provider.dart';
import 'package:portafolio_flutter/presentations/widgets/dialog_proyect.dart';
import 'package:provider/provider.dart';

class ProyectScreen extends StatelessWidget {
  const ProyectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final proyectProvider = context.watch<ProyectProvider>();

    return Padding(
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Trabajos realizados',
            style: TextStyle(fontSize: 42),
          ),
          const SizedBox(height: 20),
          const Text(
            'Algunos de mis trabajos más destacados se mencionan a continuación',
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: proyectProvider.proyects.length,
              itemBuilder: (context, index) {
                final Proyect proyect = proyectProvider.proyects[index];

                return ProyectItemCard(
                  proyect: proyect,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProyectItemCard extends StatelessWidget {
  const ProyectItemCard({
    super.key,
    required this.proyect,
  });

  //
  final Proyect proyect;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
        padding: const EdgeInsets.all(15),
          child: ListTile(
              // selectedColor: Theme.of(context).colorScheme.secondary,
              // selected: true,
              title: Text(proyect.name),
              subtitle: Text(proyect.description),
              trailing: IconButton(
                  onPressed: () {
                    showProyectCard(context, proyect);
                  },
                  icon: const Icon(Icons.visibility))),
        ),
    );
  }
}
