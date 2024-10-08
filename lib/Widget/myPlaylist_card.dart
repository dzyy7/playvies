import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/favorite_controller.dart';
import '../Model/playlisyt_model.dart';
import '../Model/favorite_model.dart';

class MyplaylistCard extends StatelessWidget {
  bool isFavorite = false;
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
                          '${playlisytModel.rating}/10 ',
                          style: const TextStyle(
                              fontSize: 14.0, color: Color(0xFFD8E9A8)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red),
                    onPressed: () {
                      favoriteController.addFavorite(FavoriteModel(
                        id: playlisytModel.totalEpisodes,
                        title: playlisytModel.title,
                        imageUrl: playlisytModel.imageUrl,
                      ));
                      
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 1.0,
          color: const Color.fromARGB(255, 0, 0, 0),
          margin: const EdgeInsets.symmetric(horizontal: 7.0),
        ),
      ],
    );
  }
}
