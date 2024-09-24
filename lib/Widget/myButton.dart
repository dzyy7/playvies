import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double width; // Menambahkan parameter width

  const MyButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.width, // Menambahkan parameter opsional width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF795757),
          foregroundColor: const Color(0xFFFFF0D1),
        ),
      ),
    );
  }
}
