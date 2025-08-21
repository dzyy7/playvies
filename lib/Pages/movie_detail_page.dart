import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/favorite_controller.dart';
import 'package:playvies/Data/movie_detail_data.dart';
import 'package:playvies/Model/favorite_model.dart';
import 'package:playvies/Model/movie_detail_model.dart';
import 'package:playvies/Widget/myText.dart';

class MovieDetailPage extends StatelessWidget {
  final String movieTitle;
  final FavoriteController favoriteController = Get.find();

  MovieDetailPage({Key? key, required this.movieTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MovieDetail? movieDetail = MovieDetailData.getMovieDetail(movieTitle);

    if (movieDetail == null) {
      return Scaffold(
        backgroundColor: const Color(0xFF191A19),
        appBar: AppBar(
          backgroundColor: const Color(0xFF191A19),
          iconTheme: const IconThemeData(color: Color(0xFFD8E9A8)),
          title: Text(
            movieTitle,
            style: const TextStyle(
              color: Color(0xFFD8E9A8),
              fontFamily: 'Calistoga',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            'Detail film tidak ditemukan',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            backgroundColor: const Color(0xFF191A19),
            iconTheme: const IconThemeData(color: Color(0xFFD8E9A8)),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    movieDetail.posterUrl,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color(0xFF191A19),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Obx(() => IconButton(
                icon: Icon(
                  favoriteController.isFavorite(movieDetail.title)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {
                  favoriteController.toggleFavorite(
                    FavoriteModel(
                      id: movieDetail.title.hashCode,
                      title: movieDetail.title,
                      imageUrl: movieDetail.posterUrl,
                    ),
                  );
                },
              )),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myText(
                    text: movieDetail.title,
                    style: const TextStyle(
                      color: Color(0xFFD8E9A8),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Calistoga',
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 20),
                      const SizedBox(width: 4),
                      myText(
                        text: '${movieDetail.rating}/10',
                        style: const TextStyle(
                          color: Color(0xFFD8E9A8),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 16),
                      myText(
                        text: '(${movieDetail.releaseYear})',
                        style: const TextStyle(
                          color: Color(0xFFD8E9A8),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildInfoRow('Genre', movieDetail.genre),
                  _buildInfoRow('Duration', movieDetail.duration),
                  _buildInfoRow('Director', movieDetail.director),
                  const SizedBox(height: 20),
                  myText(
                    text: 'Synopsis',
                    style: const TextStyle(
                      color: Color(0xFFD8E9A8),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  myText(
                    text: movieDetail.synopsis,
                    style: const TextStyle(
                      color: Color(0xFFD8E9A8),
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  myText(
                    text: 'Cast',
                    style: const TextStyle(
                      color: Color(0xFFD8E9A8),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: movieDetail.cast.map((actor) => Chip(
                      label: Text(
                        actor,
                        style: const TextStyle(color: Color(0xFF191A19)),
                      ),
                      backgroundColor: const Color(0xFFD8E9A8),
                    )).toList(),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: myText(
              text: '$label:',
              style: const TextStyle(
                color: Color(0xFFD8E9A8),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: myText(
              text: value,
              style: const TextStyle(
                color: Color(0xFFD8E9A8),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}