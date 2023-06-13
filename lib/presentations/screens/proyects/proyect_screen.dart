import 'package:flutter/material.dart';

class ProyectScreen extends StatelessWidget {
  const ProyectScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ProyectItemCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProyectItemCard extends StatelessWidget {
  const ProyectItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ListTile(
            // selectedColor: Theme.of(context).colorScheme.secondary,
            // selected: true,
            leading: const Icon(Icons.work),
            title: const Text('Login con Flutter'),
            subtitle: const Text(
                'Un login básico realizado con Flutter usando los servicios de Firebase Authentication'),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.visibility))),
      ),
    );
  }
}
