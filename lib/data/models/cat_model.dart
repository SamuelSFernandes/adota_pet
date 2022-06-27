import 'package:adotapet/data/models/size_model.dart';

import 'image_model.dart';

class CatModel {
  final String id;
  final String name;
  final String temperament;
  final String origin;
  final String description;
  final String lifeSpan;
  final String altNames;
  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int dogFriendly;
  final int intelligence;
  final ImageModel image;
  final SizeModel weight;

  CatModel({
    required this.id,
    required this.name,
    required this.temperament,
    required this.origin,
    required this.description,
    required this.lifeSpan,
    required this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.intelligence,
    required this.image,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'temperament': temperament});
    result.addAll({'origin': origin});
    result.addAll({'description': description});
    result.addAll({'lifeSpan': lifeSpan});
    result.addAll({'altNames': altNames});
    result.addAll({'adaptability': adaptability});
    result.addAll({'affectionLevel': affectionLevel});
    result.addAll({'childFriendly': childFriendly});
    result.addAll({'dogFriendly': dogFriendly});
    result.addAll({'intelligence': intelligence});
    result.addAll({'image': image.toMap()});
    result.addAll({'weight': weight.toMap()});

    return result;
  }

  factory CatModel.fromMap(Map<String, dynamic> map) {
    return CatModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      temperament: map['temperament'] ?? '',
      origin: map['origin'] ?? '',
      description: map['description'] ?? '',
      lifeSpan: map['life_span'] ?? '',
      altNames: map['alt_names'] ?? '',
      adaptability: map['adaptability']?.toInt() ?? 0,
      affectionLevel: map['affection_level']?.toInt() ?? 0,
      childFriendly: map['child_friendly']?.toInt() ?? 0,
      dogFriendly: map['dog_friendly']?.toInt() ?? 0,
      intelligence: map['intelligence']?.toInt() ?? 0,
      image: ImageModel.fromMap(map['image']),
      weight: SizeModel.fromMap(map['weight']),
    );
  }
}
