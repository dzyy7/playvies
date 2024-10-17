import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/favorite_controller.dart';

class FavoritePage extends StatelessWidget {
  final FavoriteController favoriteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Favorite Playlist',
          style: TextStyle(
            color: Color(0xFFD8E9A8),
            fontFamily: 'Calistoga',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF191A19),
      ),
      body: Obx(() {
        if (favoriteController.favoriteList.isEmpty) {
          return Center(
            child: Text(
              'No favorites yet!',
              style: TextStyle(color: Colors.white),
            ),
          );
        }
        return ListView.builder(
          itemCount: favoriteController.favoriteList.length,
          itemBuilder: (context, index) {
            final favorite = favoriteController.favoriteList[index];
            return Padding(
              padding: EdgeInsets.fromLTRB(1, 8, 0, 0),
              child: ListTile(
                title: Text(
                  favorite.title,
                  style: TextStyle(color: Color(0xFFD8E9A8)),
                ),
                leading: Image.network(favorite.imageUrl, width: 50.0),
                trailing: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    _showConfirmationDialog(context, favorite);
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }

  void _showConfirmationDialog(BuildContext context, dynamic favorite) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFF191A19),
          title: Text(
            'Konfirmasi',
            style: TextStyle(color: Colors.white),
          ),
          content: Text(
            'Apakah Anda yakin ingin menghapus item ini dari favorit?',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Batal', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Hapus', style: TextStyle(color: Colors.red)),
              onPressed: () {
                favoriteController.toggleFavorite(favorite);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}