import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
final List<Movie> movies = [
  const Movie(
    id: '1',
    title: 'The Lion King',
    description: 'A young lion discovers his destiny as king.',
    price: 10.0,
    imagePath: 'assets/images/Lion_King.jpg.JPG',
  ),
];
}