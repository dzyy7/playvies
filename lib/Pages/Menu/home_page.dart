import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/dashboard_controller.dart';
import 'package:playvies/Data/home_data.dart';
import 'package:playvies/Model/small_item_model.dart';
import 'package:playvies/Widget/myActor.dart';
import 'package:playvies/Widget/myButton.dart';
import 'package:playvies/Widget/myMovie.dart';
import 'package:playvies/Widget/mySmallitem.dart';
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
    final List<ItemModel> smallItems = SmallItemData.getItems();

    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            myText(
              text: "Selamat Datang",
              textAlign: TextAlign.start,
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
                        Get.find();
                    dashboardController.selectedIndex(1);
                  },
                  text: "Playlist",
                  width: 100,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Mysmallitem(items: smallItems),
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
            Myactor(actors: popularActors),
          ],
        ),
      ),
    );
  }
}
