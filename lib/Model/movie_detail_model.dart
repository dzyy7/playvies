class MovieDetail {
  final String title;
  final String posterUrl;
  final String releaseYear;
  final double rating;
  final String synopsis;
  final String genre;
  final String duration;
  final String director;
  final List<String> cast;

  MovieDetail({
    required this.title,
    required this.posterUrl,
    required this.releaseYear,
    required this.rating,
    required this.synopsis,
    required this.genre,
    required this.duration,
    required this.director,
    required this.cast,
  });
}