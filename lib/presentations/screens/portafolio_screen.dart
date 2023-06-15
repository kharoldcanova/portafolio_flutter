import 'package:flutter/material.dart';
import 'package:portafolio_flutter/presentations/screens/banner/banner_screen.dart';
import 'package:portafolio_flutter/presentations/screens/proyects/proyect_screen.dart';
import 'package:portafolio_flutter/presentations/screens/sbooutme/aboout_me_screen.dart';
import 'package:portafolio_flutter/presentations/widgets/app_bar.dart';
import 'package:portafolio_flutter/presentations/widgets/navigation_rail.dart';

class PortafolioScreen extends StatefulWidget {
  const PortafolioScreen({Key? key}) : super(key: key);

  @override
  State<PortafolioScreen> createState() => _PortafolioScreenState();
}

class _PortafolioScreenState extends State<PortafolioScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarScreen(),
      body: Row(
        children: [
          AppNavigationRail(
            selectedIndex: _selectedIndex,
            changed: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          const VerticalDivider(),
          Expanded(child: _getPageContent(_selectedIndex)),
        ],
      ),
    );
  }

  Widget _getPageContent(int index) {
    switch (index) {
      case 0:
        return const BannerScreen();
      case 1:
        return const ProyectScreen();
      case 2:
        return const AboutMeScreen();
      default:
        return Container();
    }
  }
}
