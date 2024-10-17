import 'package:playvies/Model/small_item_model.dart';

class SmallItemData {
  static List<ItemModel> getItems() {
    return [
      ItemModel(
        title: 'Action', 
        imageUrl: 'https://i.pinimg.com/736x/ab/3e/4c/ab3e4cdf9d07493c5376c30dd34e0de0.jpg',
      ),
      ItemModel(
        title: 'Romance', 
        imageUrl: 'https://i.pinimg.com/736x/e8/63/f5/e863f5d195b06512d91b7fecf1b758b4.jpg',
      ),
      ItemModel(
        title: 'Comedy', 
        imageUrl: 'https://i.pinimg.com/564x/1b/34/d8/1b34d89ce126c6eebb53c33b14fb3c91.jpg',
      ),
      ItemModel(
        title: 'Sci-Fi', 
        imageUrl: 'https://i.pinimg.com/enabled_lo/564x/31/6c/b5/316cb540256fff65e70922651a8e4336.jpg',
      ),
    ];
  }
}
