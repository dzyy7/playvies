import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const Myimage(
      {Key? key,
      required this.imageUrl,
      required this.width,
      required this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: width,
      height: height,
    );
  }
}
