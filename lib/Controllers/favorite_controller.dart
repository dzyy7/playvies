import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../Model/favorite_model.dart';

class FavoriteController extends GetxController {
  var favoriteList = <FavoriteModel>[].obs;
  static FavoriteController get to => Get.find(); // GetX singleton pattern
  Database? _database;
  var isFavorite = false.obs;

  void toggleFavorite() {
    isFavorite.value = !isFavorite.value;
  }
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

  // Insert favorite to the database
  Future<void> addFavorite(FavoriteModel favorite) async {
    await _database?.insert('favorites', favorite.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
    loadFavorites(); // Refresh favorites after insertion
  }

  // Get all favorites from the database
  Future<void> loadFavorites() async {
    final List<Map<String, dynamic>> maps = await _database!.query('favorites');
    favoriteList.assignAll(maps.map((map) => FavoriteModel.fromMap(map)).toList());
  }

  // Delete favorite from the database
  Future<void> removeFavorite(int id) async {
    await _database?.delete('favorites', where: 'id = ?', whereArgs: [id]);
    loadFavorites(); // Refresh favorites after deletion
  }
}
