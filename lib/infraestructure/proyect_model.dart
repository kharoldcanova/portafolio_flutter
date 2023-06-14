import 'package:portafolio_flutter/domain/entities/proyect.dart';

class ProyectModel {
  final String name;
  final String description;
  final String linkUrl;
  final String language;

  ProyectModel({
    required this.name,
    required this.description,
    required this.linkUrl,
    required this.language,
  });

  factory ProyectModel.fromJsonMap(Map<String, dynamic> json) => ProyectModel(
        name: json["name"],
        description: json["description"],
        linkUrl: json["linkUrl"],
        language: json['language'],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "linkUrl": linkUrl,
        "language": language,
      };

  Proyect toProyectEntity() =>
      Proyect(name: name, description: description, linkUrl: linkUrl, language: language);
}
