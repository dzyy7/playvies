import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final String? labelText;

  const MyTextField({
    super.key,
    this.hintText,
    this.controller,
    this.obscureText = false,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: const TextStyle(color: Color(0xFF191A19)),
          enabledBorder: const UnderlineInputBorder(
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF191A19),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
