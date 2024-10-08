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
          'Playlist',
          style: TextStyle(
            color: Color(0xFFD8E9A8),
            fontFamily: 'Calistoga',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF191A19),
      ),
      body: Obx(() {
        if (favoriteController.favoriteList.isEmpty) {
          return const Center(child: Text('No favorites yet!',style: TextStyle(color: Colors.white),));
        }
        return ListView.builder(
          itemCount: favoriteController.favoriteList.length,
          itemBuilder: (context, index) {
            final favorite = favoriteController.favoriteList[index];
            return ListTile(
              title: Text(favorite.title,style: TextStyle(color: Color(0xFFD8E9A8)),),
              leading: Image.network(favorite.imageUrl, width: 50.0),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  favoriteController.removeFavorite(favorite.id);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
