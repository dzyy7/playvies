import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double width;
  final TextAlign? textAlign;
  final TextStyle? style;

  const MyButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.width,
    this.textAlign, this.style,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 16, 43, 22),
          foregroundColor: const Color(0xFFD8E9A8),
        ),
        child: Text(
          text,
          textAlign: textAlign ?? TextAlign.center,
          style: style,
        ),
      ),
    );
  }
}
