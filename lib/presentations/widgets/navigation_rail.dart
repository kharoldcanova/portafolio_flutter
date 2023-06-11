import 'package:flutter/material.dart';

class AppNavigationRail extends StatefulWidget {
  const AppNavigationRail({
    super.key, required this.selectedIndex, required this.changed,
  });

  final int selectedIndex;
  final ValueChanged changed;

  @override
  State<AppNavigationRail> createState() => _AppNavigationRailState();
}

class _AppNavigationRailState extends State<AppNavigationRail> {
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = -1.0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
        groupAlignment: groupAlignment,
        onDestinationSelected: widget.changed,
        labelType: labelType,
        destinations: const <NavigationRailDestination>[
          NavigationRailDestination(
              icon: Icon(Icons.person), label: Text('Inicio')),
          NavigationRailDestination(
              icon: Icon(Icons.work_history), label: Text('Proyectos')),
          NavigationRailDestination(
              icon: Icon(Icons.temple_hindu), label: Text('Sobre mi')),
        ],
        selectedIndex: widget.selectedIndex);
  }
}
