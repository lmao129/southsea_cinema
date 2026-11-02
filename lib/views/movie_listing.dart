import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

class MovieListing extends StatefulWidget {
  
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  final MovieRepository _movieRepository = MovieRepository();

  int _ticketQuantity = 1;  
  String _bookingMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
     body: Container(
  child: Column(
  children: [
    Image.asset(
  _movieRepository.movies[0].imagePath,
  height: 200,
),
Text(_movieRepository.movies[0].title),
Text(_movieRepository.movies[0].description),
DropdownMenu<int>(
  initialSelection: _ticketQuantity,
  onSelected: (int? value) {
  if (value != null) {
    setState(() {
      _ticketQuantity = value;
      print('Tickets selected: $_ticketQuantity');
    });
  }
},
  dropdownMenuEntries: const [
    DropdownMenuEntry(value: 1, label: '1'),
    DropdownMenuEntry(value: 2, label: '2'),
    DropdownMenuEntry(value: 3, label: '3'),
    DropdownMenuEntry(value: 4, label: '4'),
    DropdownMenuEntry(value: 5, label: '5'),
  ],
),
Text('Tickets selected: $_ticketQuantity'),
ElevatedButton(
  onPressed: () {
  setState(() {
    _bookingMessage = 'Added $_ticketQuantity tickets to the order';
  });
},
  child: const Text('Add to order'),
),
Text(_bookingMessage),
  ],
),
),
    );
  }
}
