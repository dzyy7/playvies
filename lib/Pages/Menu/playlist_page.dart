import 'package:flutter/material.dart';
import 'package:playvies/Data/playlist_data.dart';
import 'package:playvies/Model/playlisyt_model.dart';
import 'package:playvies/Widget/myPlaylist_card.dart';

class PlaylistPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final List<PlaylisytModel> playlits = PlaylistData.Playlist();

    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Playlist',
          style: TextStyle(
            color: Color(0xFFD8E9A8),
            fontFamily: 'Calistoga',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF191A19),
      ),
      body: ListView.builder(
        itemCount: playlits.length,
        itemBuilder: (context, index) {
          return MyplaylistCard(
            playlisytModel: playlits[index],
          );
        },
      ),
    );
  }
}
