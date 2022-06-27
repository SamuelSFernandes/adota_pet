class ImageModel {
  String id;
  int width;
  int height;
  String url;
  ImageModel({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'width': width});
    result.addAll({'height': height});
    result.addAll({'url': url});

    return result;
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      id: map['id'] ?? '',
      width: map['width']?.toInt() ?? 0,
      height: map['height']?.toInt() ?? 0,
      url: map['url'] ?? '',
    );
  }
}
