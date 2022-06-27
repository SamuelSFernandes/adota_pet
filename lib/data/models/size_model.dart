class SizeModel {
  String imperial;
  String metric;
  SizeModel({
    required this.imperial,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'imperial': imperial});
    result.addAll({'metric': metric});

    return result;
  }

  factory SizeModel.fromMap(Map<String, dynamic> map) {
    return SizeModel(
      imperial: map['imperial'] ?? '',
      metric: map['metric'] ?? '',
    );
  }
}
