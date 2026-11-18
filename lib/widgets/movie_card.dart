import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/views/movie_listing.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
     child: DefaultTextStyle(
        style: const TextStyle(color: Colors.black, fontSize: 16),
        child: Column(
        children: [
              Text(
      '${movie.title} (${movie.ageRating})',
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
    const SizedBox(height: 10),
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          movie.imagePath,
          height: 150,
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(movie.description),
        ),
      ],
    ),
    const SizedBox(height: 10),
    Text('Screening time: ${movie.screeningTime}'),
          ElevatedButton(
           onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieListing(movie: movie),
            ),
          );
        },
            child: const Text('Book'),
          ),
        ],
      ),
      ), // DefaultTextStyle
    );
  }
}