import 'dart:convert';

import 'category_animals_model.dart';
import 'image_model.dart';
import 'size_model.dart';

class DogModel {
  final int id;
  final String name;
  final String lifeSpan;
  final String temperament;
  final ImageModel image;
  final SizeModel weight;
  final SizeModel height;
  final TypeAnimals type;

  DogModel({
    required this.id,
    required this.name,
    required this.lifeSpan,
    required this.temperament,
    required this.image,
    required this.weight,
    required this.height,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'lifeSpan': lifeSpan});
    result.addAll({'temperament': temperament});
    result.addAll({'image': image.toMap()});
    result.addAll({'weight': weight.toMap()});
    result.addAll({'height': height.toMap()});
    result.addAll({'type': type});

    return result;
  }

  factory DogModel.fromMap(Map<String, dynamic> map) {
    return DogModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      lifeSpan: map['life_span'] ?? '',
      temperament: map['temperament'] ?? '',
      image: ImageModel.fromMap(map['image']),
      weight: SizeModel.fromMap(map['weight']),
      height: SizeModel.fromMap(map['height']),
      type: map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DogModel.fromJson(String source) =>
      DogModel.fromMap(json.decode(source));
}
