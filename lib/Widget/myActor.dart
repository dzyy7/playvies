import 'package:flutter/material.dart';
import 'package:playvies/Model/home_model.dart';

class Myactor extends StatelessWidget {
  final List<Actor> actors;
  const Myactor({
    Key? key,
    required this.actors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: actors.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(actors[index].profileUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  actors[index].name,
                  style: const TextStyle(
                    color: Color(0xFFD8E9A8),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${actors[index].age} years',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFFD8E9A8),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
