import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../Model/favorite_model.dart';

class FavoriteController extends GetxController {
  var favoriteList = <FavoriteModel>[].obs;
  Database? _database;
  var isFavorite = false.obs;

  void toggleFavorite(FavoriteModel favorite) async {
    if (isItemFavorite(favorite.id)) {
      await removeFavorite(favorite.id);
    } else {
      await addFavorite(favorite);
    }
  }

  @override
  void onInit() {
    super.onInit();
    _initDb();
  }

  bool isItemFavorite(int id) {
    return favoriteList.any((element) => element.id == id);
  }

  Future<void> _initDb() async {
    String path = join(await getDatabasesPath(), 'favorite.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute(
          "CREATE TABLE favorites(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, imageUrl TEXT)",
        );
      },
    );
    loadFavorites();
  }

  Future<void> addFavorite(FavoriteModel favorite) async {
    await _database!.insert(
      'favorites',
      favorite.toMap(),
    );
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    final List<Map<String, dynamic>> maps = await _database!.query('favorites');
    favoriteList
        .assignAll(maps.map((map) => FavoriteModel.fromMap(map)).toList());
  }

  Future<void> removeFavorite(int id) async {
    await _database?.delete('favorites', where: 'id = ?', whereArgs: [id]);
    loadFavorites();
  }
}
