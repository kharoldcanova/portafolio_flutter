import 'package:flutter/material.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 900,
      color: Theme.of(context).primaryColor,
      child:  Padding(
        padding:  const EdgeInsets.all(150),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Kharold Canova', style: TextStyle(fontSize: 100, fontWeight: FontWeight.w300),),
                  SizedBox(height: 10),
                  Text('Desarrollador Frontend Flutter', style: TextStyle(fontSize: 25),)
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset('/images/banner_image.jpg', scale: 1,)),
          ],
        ),
      ),
    );
  }
}