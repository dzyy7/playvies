class MovieStatsModel {
  final int totalMovies;
  final double averageRating;
  final int watched;
  final int planToWatch;
  final int dropped;

  MovieStatsModel({
    required this.totalMovies,
    required this.averageRating,
    required this.watched,
    required this.planToWatch,
    required this.dropped,
  });
}
