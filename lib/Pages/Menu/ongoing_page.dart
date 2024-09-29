import 'package:flutter/material.dart';
import 'package:playvies/Data/image_slider_data.dart';
import 'package:playvies/Data/ongoing_data.dart';
import 'package:playvies/Widget/myImageslider.dart';
import 'package:playvies/Widget/myMovie.dart';
import 'package:playvies/Widget/myText.dart';

class OngoingPage extends StatelessWidget {
  final OnGoingData goingProvider = OnGoingData();
  final AnimeOnGoingData AgoingProvider = AnimeOnGoingData();
  final KoreanOnGoingData KgoingProvider = KoreanOnGoingData();

  OngoingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OnGoing = goingProvider.onGoing();
    final AOnGoing = AgoingProvider.AonGoing();
    final KOnGoing = KgoingProvider.kOnGoing();

    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'On-Going',
          style: TextStyle(
            color: Color(0xFFD8E9A8),
            fontFamily: 'Calistoga',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF191A19),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            myImagesSlider(imageList: imageDatalist), 
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: myText(
                  text: 'Populer On Going',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD8E9A8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Mymovie(movies: OnGoing),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: myText(
                  text: 'Anime On Going',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD8E9A8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Mymovie(movies: AOnGoing),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: myText(
                  text: 'Korean On Going',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD8E9A8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Mymovie(movies: KOnGoing),
          ],
        ),
      ),
    );
  }
}
