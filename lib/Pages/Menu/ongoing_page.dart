import 'package:flutter/material.dart';

class OngoingPage extends StatelessWidget {
  const OngoingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0D1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Playlist',
          style: TextStyle(
            color: Color(0xFFFFF0D1),
            fontFamily: 'Calistoga',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF795757),
      ),
    );
  }
}