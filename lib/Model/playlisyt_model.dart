class PlaylisytModel {
  final int id;
  final String title;
  final String ratetitle;
  final String imageUrl;
  final int episodesWatched;
  final int totalEpisodes;
  final double rating;
  final int userRating;
  final String status;

  PlaylisytModel({
    required this.id,
    required this.title,
    required this.ratetitle,
    required this.imageUrl,
    required this.episodesWatched,
    required this.totalEpisodes,
    required this.rating,
    required this.userRating,
    required this.status,
  });
}