import 'package:flutter/material.dart';

class myText extends StatelessWidget {
  final String text;
  final TextStyle style;
    final TextAlign? textAlign; 



  const myText({super.key, required this.text, required this.style, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
