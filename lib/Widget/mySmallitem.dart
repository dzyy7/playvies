import 'package:flutter/material.dart';
import 'package:playvies/Model/small_item_model.dart';

class Mysmallitem extends StatelessWidget {
  final List<ItemModel> items;

  const Mysmallitem({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
      color: const Color.fromARGB(255, 16, 43, 22),
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
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                item.title,
                style: const TextStyle(
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
