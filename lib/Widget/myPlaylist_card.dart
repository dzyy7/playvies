import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/favorite_controller.dart';
import 'package:playvies/Pages/movie_detail_page.dart';
import '../Model/playlisyt_model.dart';
import '../Model/favorite_model.dart';

class MyplaylistCard extends StatelessWidget {
  final PlaylisytModel playlisytModel;
  final FavoriteController favoriteController = Get.find();

  MyplaylistCard({super.key, required this.playlisytModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => MovieDetailPage(movieTitle: playlisytModel.title));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: 'movie-${playlisytModel.title}',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      playlisytModel.imageUrl,
                      height: 80.0,
                      width: 60.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        playlisytModel.title,
                        style: const TextStyle(
                          color: Color(0xFFD8E9A8),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        'Episodes: ${playlisytModel.episodesWatched}/${playlisytModel.totalEpisodes}',
                        style: const TextStyle(
                            fontSize: 14.0, color: Color(0xFFD8E9A8)),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18.0,
                          ),
                          const SizedBox(width: 4.0),
                          Text(
                            '${playlisytModel.rating}/10',
                            style: const TextStyle(
                                fontSize: 14.0, color: Color(0xFFD8E9A8)),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 2.0),
                            decoration: BoxDecoration(
                              color: _getRatingColor(playlisytModel.userRating),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Text(
                              playlisytModel.ratetitle,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Obx(() => IconButton(
                      icon: Icon(
                        favoriteController.isFavorite(playlisytModel.title)
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        favoriteController.toggleFavorite(FavoriteModel(
                          id: playlisytModel.title.hashCode,
                          title: playlisytModel.title,
                          imageUrl: playlisytModel.imageUrl,
                        ));
                      },
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 1.0,
          color: const Color.fromARGB(255, 50, 50, 50),
          margin: const EdgeInsets.symmetric(horizontal: 7.0),
        ),
      ],
    );
  }

  Color _getRatingColor(int userRating) {
    if (userRating >= 9) {
      return Colors.purple; // Masterpiece
    } else if (userRating >= 8) {
      return Colors.green; // Excellent/Very good
    } else if (userRating >= 7) {
      return Colors.blue; // Good
    } else if (userRating >= 6) {
      return Colors.orange; // Fine
    } else {
      return Colors.red; // Average/Poor
    }
  }
}