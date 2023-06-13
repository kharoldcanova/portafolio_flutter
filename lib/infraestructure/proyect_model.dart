import 'package:portafolio_flutter/domain/proyect.dart';

class ProyectModel {
  final String name;
  final String description;
  final String linkUrl;

  ProyectModel({
    required this.name,
    required this.description,
    required this.linkUrl,
  });

  factory ProyectModel.fromJsonMap(Map<String, dynamic> json) => ProyectModel(
        name: json["name"],
        description: json["description"],
        linkUrl: json["linkUrl"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "linkUrl": linkUrl,
      };

  Proyect toMessageEntity() =>
      Proyect(name: name, description: description, linkUrl: linkUrl);
}
