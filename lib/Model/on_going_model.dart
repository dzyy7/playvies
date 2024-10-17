class Movie {
  final String title;
  final String posterUrl;
  final String releaseYear;
  final double rating;

  Movie({
    required this.title,
    required this.posterUrl,
    required this.releaseYear,
    this.rating = 0.0, 
  });
}