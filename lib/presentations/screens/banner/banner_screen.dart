import 'package:flutter/material.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: 900,
        child:  Padding(
          padding:  const EdgeInsets.all(150),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Kharold Canova', style: TextStyle(fontSize: 100, fontWeight: FontWeight.w300),),
                    const SizedBox(height: 10),
                    const Text('Desarrollador Frontend Flutter', style: TextStyle(fontSize: 25),),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: FilledButton(
                        onPressed: (){
                          
                        },
                      child: const Text('Contactame')))
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset('/images/banner_image.jpg', scale: 1,)),
            ],
          ),
        ),
      ),
    );
  }
}