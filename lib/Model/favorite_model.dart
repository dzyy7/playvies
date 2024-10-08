class FavoriteModel {
  final int id;
  final String title;
  final String imageUrl;

  FavoriteModel({required this.id, required this.title, required this.imageUrl});

  // Convert object to map for database insertion
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
    };
  }

  // Convert map to object for retrieval
  factory FavoriteModel.fromMap(Map<String, dynamic> map) {
    return FavoriteModel(
      id: map['id'],
      title: map['title'],
      imageUrl: map['imageUrl'],
    );
  }
}
