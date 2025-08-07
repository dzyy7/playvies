import 'package:flutter/material.dart';
import 'package:playvies/Data/movie_stats_data.dart';
import 'package:playvies/Widget/myButton.dart';
import 'package:playvies/Widget/myImage.dart';
import 'package:playvies/Widget/myMovieStats.dart';
import 'package:playvies/Widget/myText.dart';

class ProfilePageTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stats = MovieStatsData.exampleStats;

    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(1,17,1,15),
              decoration: BoxDecoration(
                color: const Color(0xFF191A19),
                borderRadius: BorderRadius.circular(15),
                
              ),
              child: Center(
                child: myText(
                  text: "Profile",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD8E9A8),
                    fontFamily: 'Calistoga',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bagian Profil Kiri
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF191A19),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyImage(
                          imageUrl:
                              'https://i.pinimg.com/564x/93/d6/f5/93d6f51c8076c1649f1a4dc64000bc38.jpg',
                          width: 120,
                          height: 120,
                          radius: 60,
                        ),
                        const SizedBox(height: 25),
                        myText(
                          text: "Muhammad Dzaky Aulia Al Ghazam",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD8E9A8),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        const Icon(
                          Icons.verified,
                          color: Colors.blue,
                          size: 20,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildStatColumn("Followers", "1M"),
                            const SizedBox(width: 40),
                            _buildStatColumn("Following", "1"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Bagian Kanan untuk Statistik Film
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF191A19),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 50),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 16, 43, 22),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Text(
                            "Joined 31 Desember 2021",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFD8E9A8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MyButton(
                              onPressed: () {},
                              text: "Movie List",
                              width: 140,
                              style: const TextStyle(
                                color: Color(0xFFD8E9A8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 20),
                            MyButton(
                              onPressed: () {},
                              text: "Series List",
                              width: 140,
                              style: const TextStyle(
                                color: Color(0xFFD8E9A8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        MyMovieStats(stats: stats),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, String count) {
    return Column(
      children: [
        myText(
          text: label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFD8E9A8),
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        myText(
          text: count,
          style: const TextStyle(
            color: Color(0xFFD8E9A8),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
