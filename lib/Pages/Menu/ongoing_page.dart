import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playvies/Data/image_slider_data.dart';
import 'package:playvies/Widget/myText.dart';

class OngoingPage extends StatelessWidget {
  const OngoingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Playlist',
          style: TextStyle(
            color: Color(0xFFD8E9A8),
            fontFamily: 'Calistoga',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF191A19),
      ),
      body: CarouselSlider.builder(
        itemCount: imageDataList.length,
        itemBuilder: (context, index, realIndex) {
          final image = imageDataList[index];
          return Stack(
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(image.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 165 ,
                width: double.infinity,
              ),
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),gradient: 
                LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [
                  Colors.transparent,
                  Color.fromARGB(255, 16, 43, 22)
                ])),
              ),
              Positioned(
                bottom: 15.0,
                left: 36.0,
                child: Column(
                children: [
                  myText(text: image.title, style: TextStyle(color:   const Color(0xFFD8E9A8)))
                ],
              ))
            ],
          );
        },
        options: CarouselOptions(
          reverse: false,
          height: 165,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal
        ),
      ),
    );
  }
}