class ClubModel {
  final String? name;
  final String? shortInfo;
  final String? info;
  final String? logoUrl;
  final String? instaId;
  final List<dynamic> images;

  ClubModel({
    required this.name,
    required this.shortInfo,
    required this.info,
    required this.logoUrl,
    required this.instaId,
    required this.images,
  });

  factory ClubModel.fromJson(Map<String, dynamic> json) {
    return ClubModel(
      name: json['name'] as String,
      shortInfo: json['shortInfo'] as String,
      info: json['info'] as String,
      logoUrl: json['logoUrl'] as String,
      instaId: json['instaId'] as String,
      images: (json['images'] as List<dynamic>),
    );
  }
}
