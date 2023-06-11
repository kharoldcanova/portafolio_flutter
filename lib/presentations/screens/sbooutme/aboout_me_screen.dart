import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return const Padding(
      padding:  EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Sobre mi', style: TextStyle(fontSize: 32),),
           SizedBox(height: 20),
           Text('Un desarrollador Frontend en busca de aportar a una organizacion'),
          
        ],
      ),
    );
  }
}