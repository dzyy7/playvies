import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const Myimage(
      {super.key,
      required this.imageUrl,
      required this.width,
      required this.height});
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: width,
      height: height,
    );
  }
}
