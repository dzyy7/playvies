import 'package:flutter/material.dart';
import 'package:playvies/Model/movie_stats_model.dart';

class MyMovieStats extends StatelessWidget {
  final MovieStatsModel stats;

  const MyMovieStats({Key? key, required this.stats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Movie Stats',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            _buildStatRow('Total Movies', stats.totalMovies, Colors.blue),
            _buildStatRow('Average Rating', stats.averageRating.toStringAsFixed(1), Colors.green),
            _buildStatRow('Watched', stats.watched, Colors.yellow),
            _buildStatRow('Plan to Watch', stats.planToWatch, Colors.grey),
            _buildStatRow('Dropped', stats.dropped, Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, dynamic value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Container(width: 12, height: 12, color: color),
          SizedBox(width: 8),
          Text(label, style: TextStyle(color: Colors.white)),
          Spacer(),
          Text('$value', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
