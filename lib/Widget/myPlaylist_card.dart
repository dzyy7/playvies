import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/favorite_controller.dart';
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                playlisytModel.imageUrl,
                height: 80.0,
                width: 60.0,
                fit: BoxFit.cover,
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
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        Text(
                          'Episodes: ${playlisytModel.episodesWatched}/${playlisytModel.totalEpisodes}',
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFFD8E9A8),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 1.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF1E5128),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            '${playlisytModel.status}',
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFFD8E9A8),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),

                    // Rating + Rate Title
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
                            fontSize: 14.0,
                            color: Color(0xFFD8E9A8),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 1.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF1E5128),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            '${playlisytModel.ratetitle}',
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFFD8E9A8),
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
                  Obx(() {
                    bool isFavorite =
                        favoriteController.isItemFavorite(playlisytModel.id);
                    return IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        favoriteController.toggleFavorite(FavoriteModel(
                          id: playlisytModel.id,
                          title: playlisytModel.title,
                          imageUrl: playlisytModel.imageUrl,
                        ));
                      },
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
        // Divider
        Container(
          height: 1.0,
          color: const Color.fromARGB(255, 0, 0, 0),
          margin: const EdgeInsets.symmetric(horizontal: 7.0),
        ),
      ],
    );
  }
}
