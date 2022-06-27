enum TypeAnimals {
  all,
  dog,
  cat,
}

class CategoryAnimals {
  final String title;
  final TypeAnimals value;
  CategoryAnimals({
    required this.title,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'value': value});

    return result;
  }

  factory CategoryAnimals.fromMap(Map<String, dynamic> map) {
    return CategoryAnimals(
      title: map['title'] ?? '',
      value: map['value'] ?? TypeAnimals.all,
    );
  }
}
