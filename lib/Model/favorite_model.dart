class FavoriteModel {
  final int id;
  final String title;
  final String imageUrl;

  FavoriteModel({required this.id, required this.title, required this.imageUrl});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
    };
  }

  factory FavoriteModel.fromMap(Map<String, dynamic> map) {
    return FavoriteModel(
      id: map['id'],
      title: map['title'],
      imageUrl: map['imageUrl'],
    );
  }
}
