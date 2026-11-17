class Movie {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imagePath;
  final String ageRating;
  final String screeningTime;

  const Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.ageRating,
    required this.screeningTime,
  });
  String get formattedPrice => '£${price.toStringAsFixed(2)}';
}