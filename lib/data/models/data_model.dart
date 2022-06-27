import 'dart:convert';

class DataModel<T> {
  final int page;
  final int limit;
  final int total;
  final int count;
  List<T> results;
  DataModel({
    required this.page,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'page': page});
    result.addAll({'limit': limit});
    result.addAll({'total': total});
    result.addAll({'count': count});
    result.addAll({'results': results});

    return result;
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      page: map['page']?.toInt() ?? 0,
      limit: map['limit']?.toInt() ?? 0,
      total: map['total']?.toInt() ?? 0,
      count: map['count']?.toInt() ?? 0,
      results: map['results'] as List<T>,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(json.decode(source));
}
