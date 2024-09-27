import 'package:flutter/material.dart';

import '../Model/playlisyt_model.dart';

class MyplaylistCard extends StatelessWidget {
  final PlaylisytModel playlisytModel;

  const MyplaylistCard({super.key, required this.playlisytModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Image.network(
                playlisytModel.imageUrl,
                height: 80.0,
                width: 60.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 16.0),
              // Info and Status Column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      playlisytModel.title,
                      style: const TextStyle(
                        color: Color(0xFFD8E9A8),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    // Episodes Info
                    Text(
                      'Episodes: ${playlisytModel.episodesWatched}/${playlisytModel.totalEpisodes}',
                      style: const TextStyle(fontSize: 14.0,color: Color(0xFFD8E9A8),),
                    ),
                    const SizedBox(height: 8.0),
                    // Rating
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
                          style: const TextStyle(fontSize: 14.0,color: Color(0xFFD8E9A8),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Status and User Rating
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Status (Watching, Completed, etc.)
                  Text(
                    playlisytModel.ratetitle,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF4E9F3D),
                    ),
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
                        '${playlisytModel.userRating}',
                        style: const TextStyle(fontSize: 14.0,color: Color(0xFFD8E9A8),),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // Divider between items
        Container(
          height: 1.0,
          color: const Color.fromARGB(255, 0, 0, 0),
          margin: const EdgeInsets.symmetric(horizontal: 7.0),
        ),
      ],
    );
  }
}
