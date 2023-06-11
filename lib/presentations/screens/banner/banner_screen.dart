import 'package:flutter/material.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(150),
      child: Container(
        color: Theme.of(context).primaryColor,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kharold Canova', style: TextStyle(fontSize: 100, fontWeight: FontWeight.w300),),
                SizedBox(height: 10),
                Text('Desarrollador Frontend Flutter', style: TextStyle(fontSize: 25),)
              ],
            ),
            Text('Animated here'),
          ],
        ),
      ),
    );
  }
}