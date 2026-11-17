import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
final List<Movie> movies = [
  const Movie(
    id: '1',
    title: 'The Lion King',
    description: 'A young lion discovers his destiny as king.',
    price: 10.0,
    imagePath: 'assets/images/Lion_King.jpg',
    ageRating: 'U',
    screeningTime: '18:00',
  ),
  const Movie(
    id: '2',
    title: 'Merlin',
    description: 'A young wizard discovers his magical destiny in Camelot.',
    price: 10.0,
    imagePath: 'assets/images/Merlin.jpg',
    ageRating: 'PG',
    screeningTime: '20:00',
),

  ];

  List<Movie> getMovies() {
    return movies;
  }
}