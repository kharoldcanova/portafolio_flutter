import 'package:flutter/material.dart';
import 'package:portafolio_flutter/domain/entities/proyect.dart';
import 'package:portafolio_flutter/infraestructure/proyect_model.dart';
import 'package:portafolio_flutter/shared/local_proyect_item.dart';

class ProyectProvider extends ChangeNotifier {

  List<Proyect> proyects = [];

  Future<void> loadProyects()async{
    final List<Proyect> newProyect = proyectsItems.map((proyect) => ProyectModel.fromJsonMap(proyect).toProyectEntity()).toList();
    proyects.addAll(newProyect);
    notifyListeners();
  }
  
}