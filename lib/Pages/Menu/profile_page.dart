import 'package:flutter/material.dart';
import 'package:playvies/Data/movie_stats_data.dart';
import 'package:playvies/Widget/myButton.dart';
import 'package:playvies/Widget/myImage.dart';
import 'package:playvies/Widget/myMovieStats.dart';
import 'package:playvies/Widget/myText.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stats = MovieStatsData.exampleStats;

    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Color(0xFFD8E9A8),
            fontFamily: 'Calistoga',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF191A19),
        centerTitle: true,
      ),
      body: SingleChildScrollView( // Membuat konten bisa di-scroll.
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyImage(
              imageUrl:
                  'https://i.pinimg.com/564x/93/d6/f5/93d6f51c8076c1649f1a4dc64000bc38.jpg',
              width: 100,
              height: 100,
              radius: 100,
            ),
            SizedBox(height: 20),
            myText(
              text: "Muhammad Dzaky Aulia",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD8E9A8),
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myText(
                  text: "Al Ghazam",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD8E9A8),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  children: [
                    myText(
                      text: "Followers",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD8E9A8),
                      ),
                    ),
                    myText(
                      text: "1M",
                      style: TextStyle(color: Color(0xFFD8E9A8)),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Color(0xFFD8E9A8),
                  width: 50,
                ),
                 Column(
                  children: [
                    myText(
                      text: "Following",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD8E9A8),
                      ),
                    ),
                    myText(
                      text: "1",
                      style: TextStyle(color: Color(0xFFD8E9A8)),
                    ),
                  ],
                ),
              ],
            ),
            MyMovieStats(stats: stats),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(onPressed: () {}, text: "Movie list", width: 125),
                MyButton(onPressed: () {}, text: "Series list", width: 125),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 40,
              width: 275,
              padding: const EdgeInsets.fromLTRB(12, 9, 12, 0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 16, 43, 22),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Text(
                "Joined 31 Desember 2021",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFFD8E9A8),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
