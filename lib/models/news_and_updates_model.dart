class NewsAndUpdatesModel {
  final String? name;
  final String? url;
  final String? imageUrl;

  const NewsAndUpdatesModel({
    required this.name,
    required this.imageUrl,
    required this.url,
  });

  factory NewsAndUpdatesModel.fromJson(Map<String, dynamic> json) {
    return NewsAndUpdatesModel(
      name: json['name'],
      imageUrl: json['imageUrl'],
      url: json['url'],
    );
  }
}
