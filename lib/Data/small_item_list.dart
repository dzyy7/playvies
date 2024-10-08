import 'package:playvies/Model/small_item_model.dart';

class SmallItemData {
  static List<ItemModel> getItems() {
    return [
      ItemModel(
        title: 'Vincenzo', 
        imageUrl: 'https://i.pinimg.com/736x/b9/1c/22/b91c2275452bc4d60c35278fd89294a8.jpg',
      ),
      ItemModel(
        title: 'Gintama', 
        imageUrl: 'https://i.pinimg.com/736x/4b/b7/4d/4bb74d3f9eb497a06358c3b9c1164bc2.jpg',
      ),
      ItemModel(
        title: 'Fast Furious 7', 
        imageUrl: 'https://i.pinimg.com/564x/36/7b/ca/367bca601cfcc03bf9ed6924f7cbff50.jpg',
      ),
      ItemModel(
        title: 'Vinland Saga', 
        imageUrl: 'https://i.pinimg.com/564x/4a/dd/aa/4addaa30506688c23731e73a2f4bb72d.jpg',
      ),
    ];
  }
}
