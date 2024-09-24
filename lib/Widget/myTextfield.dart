import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final String hintText;

const Mytextfield({
    Key? key,
    required this.hintText
  }) : super(key: key);
  
    @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2,
            ),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
