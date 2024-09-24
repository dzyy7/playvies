import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  final String? labelText;

  const MyTextField({
    Key? key,
    this.hintText,
    this.controller,
    this.obscureText = false,
    this.validator,
    this.labelText,
  }) : super(key: key);

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
          labelStyle: TextStyle(color: Color(0xFF3B3030)),
          enabledBorder: const UnderlineInputBorder(
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF3B3030), // Warna saat fokus
              width: 2,
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
