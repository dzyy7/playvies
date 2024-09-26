import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/dashboard_controller.dart';
import 'package:playvies/Data/home_data.dart';
import 'package:playvies/Widget/myButton.dart';
import 'package:playvies/Widget/myText.dart';
import '../../Data/small_item_list.dart';

class HomePage extends StatelessWidget {
  final MovieProvider movieProvider = MovieProvider();
  final ActorProvider actorProvider = ActorProvider();

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
            myText(text: "Selamat Datang", style: TextStyle(
            color: Color(0xFFD8E9A8),
            fontFamily: 'Calistoga',
            fontWeight: FontWeight.bold,
            fontSize: 24
          ),),
          SizedBox(height: 20,),
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
            SizedBox(height: 16),
            SmallItemList(),
            SizedBox(height: 10),
            myText(
              text: 'Most Popular',
              style: TextStyle(
                color: Color(0xFFD8E9A8),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularMovies.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 140,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      popularMovies[index].posterUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 5,
                              bottom: 5,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '${popularMovies[index].rating}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(0, 0),
                                          blurRadius: 3,
                                          color: Colors.black.withOpacity(0.8),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          popularMovies[index].title,
                          style: TextStyle(
                            color: Color(0xFFD8E9A8),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '(${popularMovies[index].releaseYear})',
                          style: TextStyle(
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
            SizedBox(height: 10),
            Text(
              'Most Popular Actors',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularActors.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
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
                        SizedBox(height: 5),
                        Text(
                          popularActors[index].name,
                          style: TextStyle(
                            color: Color(0xFFD8E9A8),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${popularActors[index].age} years',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFD8E9A8)  ,
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
