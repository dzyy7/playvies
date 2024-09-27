import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/dashboard_controller.dart';
import 'package:playvies/Data/home_data.dart';
import 'package:playvies/Widget/myButton.dart';
import 'package:playvies/Widget/myMovie.dart';
import 'package:playvies/Widget/myText.dart';
import '../../Data/small_item_list.dart';

class HomePage extends StatelessWidget {
  final HomeMovieData movieProvider = HomeMovieData();
  final HomeActorData actorProvider = HomeActorData();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final popularMovies = movieProvider.popularMovies();
    final popularActors = actorProvider.popularActors();

    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const myText(
              text: "Selamat Datang",
              style: TextStyle(
                  color: Color(0xFFD8E9A8),
                  fontFamily: 'Calistoga',
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyButton(
                  onPressed: () {
                    final DashboardController dashboardController =
                        Get.put(DashboardController());
                    dashboardController.selectedIndex(1);
                  },
                  text: "Playlist",
                  width: 100,
                ),
              ],
            ),
            const SizedBox(height: 16),
            SmallItemList(),
            const SizedBox(height: 10),
            myText(
              text: 'Most Popular Movies',
              style: TextStyle(
                color: Color(0xFFD8E9A8),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Mymovie(movies: popularMovies),
            myText(
              text: 'Most Popular Actors',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD8E9A8)),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularActors.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 140,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:
                                  NetworkImage(popularActors[index].profileUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          popularActors[index].name,
                          style: const TextStyle(
                            color: Color(0xFFD8E9A8),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${popularActors[index].age} years',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFFD8E9A8),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
