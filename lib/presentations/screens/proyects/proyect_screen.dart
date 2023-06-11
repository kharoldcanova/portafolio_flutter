import 'package:flutter/material.dart';

class ProyectScreen extends StatelessWidget {
  const ProyectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Trabajos realizados', style: TextStyle(fontSize: 32),),
           SizedBox(height: 20),
           Text('Algunos de mis trabajos mas destacados se mencionan a continuacion'),
          
        ],
      ),
    );
  }
}