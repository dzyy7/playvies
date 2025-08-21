import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/favorite_controller.dart';
import 'package:playvies/Pages/movie_detail_page.dart';

class FavoritePage extends StatelessWidget {
  final FavoriteController favoriteController = Get.find();

  FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Favorites',
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
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 80,
                  color: Colors.grey,
                ),
                SizedBox(height: 16),
                Text(
                  'Belum ada favorit',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Tambahkan film favoritmu dengan menekan ♡',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }
        return ListView.builder(
          itemCount: favoriteController.favoriteList.length,
          itemBuilder: (context, index) {
            final favorite = favoriteController.favoriteList[index];
            return GestureDetector(
              onTap: () {
                Get.to(() => MovieDetailPage(movieTitle: favorite.title));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 16, 43, 22),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12.0),
                  leading: Hero(
                    tag: 'favorite-${favorite.title}',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        favorite.imageUrl,
                        width: 50.0,
                        height: 70.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    favorite.title,
                    style: const TextStyle(
                      color: Color(0xFFD8E9A8),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: const Text(
                    'Tap untuk melihat detail',
                    style: TextStyle(
                      color: Color(0xFFD8E9A8),
                      fontSize: 12,
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {
                      _showRemoveDialog(context, favorite);
                    },
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }

  void _showRemoveDialog(BuildContext context, favorite) {
    Get.dialog(
      AlertDialog(
        backgroundColor: const Color(0xFF191A19),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Text(
          'Hapus dari Favorit',
          style: TextStyle(color: Color(0xFFD8E9A8)),
        ),
        content: Text(
          'Apakah Anda yakin ingin menghapus "${favorite.title}" dari daftar favorit?',
          style: const TextStyle(color: Color(0xFFD8E9A8)),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text(
              'Batal',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          TextButton(
            onPressed: () {
              favoriteController.removeFavorite(favorite.id);
              Get.back();
            },
            child: const Text(
              'Hapus',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}