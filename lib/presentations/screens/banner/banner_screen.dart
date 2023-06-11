import 'package:flutter/material.dart';
import 'package:portafolio_flutter/presentations/screens/login/login_screen.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({super.key});

  void _mostrarFormularioFlotante(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const AlertDialog(
        title:  Text('Iniciar Sesión', textAlign: TextAlign.center,),
        titlePadding: EdgeInsets.only(top: 50),
        contentPadding: EdgeInsets.all(30),
        content:  SizedBox(
          width: 450,
          height: 250,
          child: LoginScreen()),
  
      );
    },
  );
}

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
                        _mostrarFormularioFlotante(context);
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
    );
  }
}