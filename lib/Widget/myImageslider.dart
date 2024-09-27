import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playvies/Model/image_slider_model.dart';

class myImagesSlider extends StatelessWidget {
  final List<ImageSliderModel> imageList;

  const myImagesSlider({Key? key, required this.imageList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageList.length,
      itemBuilder: (context, index, realIndex) {
        final image = imageList[index];
        return Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(image.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              height: 165,
              width: double.infinity,
            ),
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color.fromARGB(255, 16, 43, 22),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15.0,
              left: 18.0,
              child: Text(
                image.title,
                style: const TextStyle(
                  color: Color(0xFFD8E9A8),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        reverse: false,
        height: 165,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
