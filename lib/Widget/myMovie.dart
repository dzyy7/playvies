import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Model/home_model.dart';
import 'package:playvies/Pages/movie_detail_page.dart';

class Mymovie extends StatelessWidget {
  final List<Movie> movies;

  const Mymovie({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(() => MovieDetailPage(movieTitle: movies[index].title));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Hero(
                        tag: 'movie-${movies[index].title}',
                        child: Container(
                          height: 140,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            image: DecorationImage(
                              image: NetworkImage(movies[index].posterUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        bottom: 5,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 16,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                '${movies[index].rating}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 100,
                    child: Text(
                      movies[index].title,
                      style: const TextStyle(
                        color: Color(0xFFD8E9A8),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    '(${movies[index].releaseYear})',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFFD8E9A8),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}