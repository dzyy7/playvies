import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../Model/favorite_model.dart';

class FavoriteController extends GetxController {
  var favoriteList = <FavoriteModel>[].obs;
  static FavoriteController get to => Get.find(); // GetX singleton pattern
  Database? _database;

  @override
  void onInit() {
    super.onInit();
    _initDb();
  }

  // Initialize the database
  Future<void> _initDb() async {
    String path = join(await getDatabasesPath(), 'favorite.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute(
          "CREATE TABLE favorites(id INTEGER PRIMARY KEY, title TEXT, imageUrl TEXT)",
        );
      },
    );
    loadFavorites(); // Load favorites when the controller initializes
  }

  // Check if item is favorite
  bool isFavorite(String title) {
    return favoriteList.any((favorite) => favorite.title == title);
  }

  // Toggle favorite status
  Future<void> toggleFavorite(FavoriteModel item) async {
    if (isFavorite(item.title)) {
      // Remove from favorites
      await removeFavoriteByTitle(item.title);
    } else {
      // Add to favorites
      await addFavorite(item);
    }
  }

  // Insert favorite to the database
  Future<void> addFavorite(FavoriteModel favorite) async {
    try {
      await _database?.insert('favorites', favorite.toMap(), 
          conflictAlgorithm: ConflictAlgorithm.replace);
      loadFavorites(); // Refresh favorites after insertion
      Get.snackbar('Success', '${favorite.title} ditambahkan ke favorit',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', 'Gagal menambahkan ke favorit',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // Get all favorites from the database
  Future<void> loadFavorites() async {
    final List<Map<String, dynamic>> maps = await _database!.query('favorites');
    favoriteList.assignAll(maps.map((map) => FavoriteModel.fromMap(map)).toList());
  }

  // Delete favorite from the database by ID
  Future<void> removeFavorite(int id) async {
    try {
      await _database?.delete('favorites', where: 'id = ?', whereArgs: [id]);
      loadFavorites(); // Refresh favorites after deletion
      Get.snackbar('Success', 'Dihapus dari favorit',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', 'Gagal menghapus dari favorit',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // Delete favorite from the database by title
  Future<void> removeFavoriteByTitle(String title) async {
    try {
      await _database?.delete('favorites', where: 'title = ?', whereArgs: [title]);
      loadFavorites(); // Refresh favorites after deletion
      Get.snackbar('Success', '$title dihapus dari favorit',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', 'Gagal menghapus dari favorit',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}