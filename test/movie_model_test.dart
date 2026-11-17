
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model tests', () {
    const movie = Movie(
      id: '1',
      title: 'The Lion King',
      description: 'A young lion discovers his destiny as king.',
      price: 10.0,
      imagePath: 'assets/images/Lion_King.jpg',
      ageRating: 'U',
      screeningTime: '18:00',
    );

    test('stores movie information correctly', () {
      expect(movie.id, '1');
      expect(movie.title, 'The Lion King');
      expect(movie.description,
          'A young lion discovers his destiny as king.');
      expect(movie.price, 10.0);
      expect(movie.imagePath, 'assets/images/Lion_King.jpg');
      expect(movie.ageRating, 'U');
      expect(movie.screeningTime, '18:00');
    });

    test('formats whole-pound prices correctly', () {
      expect(movie.formattedPrice, '£10.00');
    });

    test('formats prices with pence correctly', () {
      const anotherMovie = Movie(
        id: '2',
        title: 'Merlin',
        description: 'A fantasy adventure.',
        price: 12.50,
        imagePath: 'assets/images/Merlin.jpg',
        ageRating: 'PG',
        screeningTime: '20:00',
      );

      expect(anotherMovie.formattedPrice, '£12.50');
    });
  });
}
