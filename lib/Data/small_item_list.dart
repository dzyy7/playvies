import 'package:flutter/material.dart';
import 'package:playvies/Model/small_item_model.dart';
class SmallItemList extends StatelessWidget {
  final List<ItemModel> items = [
    ItemModel(title: 'Vincenzo', imageUrl: 'https://i.pinimg.com/736x/b9/1c/22/b91c2275452bc4d60c35278fd89294a8.jpg'),
    ItemModel(title: 'Gintama', imageUrl: 'https://i.pinimg.com/736x/4b/b7/4d/4bb74d3f9eb497a06358c3b9c1164bc2.jpg'),
    ItemModel(title: 'Fast Furious 7', imageUrl: 'https://i.pinimg.com/564x/36/7b/ca/367bca601cfcc03bf9ed6924f7cbff50.jpg'),
    ItemModel(title: 'Vinland Saga', imageUrl: 'https://i.pinimg.com/564x/4a/dd/aa/4addaa30506688c23731e73a2f4bb72d.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: 2 / 1,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _buildItem(items[index]);
      },
    );
  }

  Widget _buildItem(ItemModel item) {
    return Card(
      color: Color.fromARGB(255, 16, 43, 22),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                item.imageUrl,
                height: 60,
                width: 60,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Text(
                item.title,
                style: TextStyle(
                  color: Color(0xFFFFF0D1),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: null,
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
