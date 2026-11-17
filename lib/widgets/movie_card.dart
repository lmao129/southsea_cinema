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
          Image.asset(
            movie.imagePath,
            height: 250,
            width: 180,
            fit: BoxFit.cover,
          ),
          Text(movie.title),
          Text(movie.ageRating),
          Text(movie.description),
          Text(movie.screeningTime),
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