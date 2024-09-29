import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final double? radius;

  const MyImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
