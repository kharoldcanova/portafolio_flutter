import 'package:flutter/material.dart';
import 'package:portafolio_flutter/presentations/screens/banner/banner_screen.dart';
import 'package:portafolio_flutter/presentations/widgets/app_bar.dart';

class PortafolioScreen extends StatelessWidget {
  const PortafolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: AppBarScreen(),
      body: BannerScreen(),
    );
  }
}