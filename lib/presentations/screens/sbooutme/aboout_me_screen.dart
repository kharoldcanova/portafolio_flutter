import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sobre mi',
            style: TextStyle(fontSize: 42),
          ),
          SizedBox(height: 20),
          Text(
            '¡Hola!, mi nombre es Kharold Canova',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            'Me desempeño como desarrollador Frontend de Flutter.',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            'Llevo alrededor de dos años usando este hermoso framework de Dart',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
