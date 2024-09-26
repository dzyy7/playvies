class Movie {
  final int id;
  final String title;
  final String posterUrl;
  final String releaseYear;
  final double rating;

  Movie({
    required this.id,
    required this.title,
    required this.posterUrl,
    required this.releaseYear,
    this.rating = 0.0, 
  });
}


class Actor {
  final int id;
  final String name;
  final String profileUrl;
  final int age;

  Actor({required this.id, required this.name, required this.profileUrl, required this.age});
}