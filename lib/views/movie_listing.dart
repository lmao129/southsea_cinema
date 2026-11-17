import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';
import 'package:southsea_cinema/models/movie.dart';

class MovieListing extends StatefulWidget {
  final Movie movie;

  const MovieListing({super.key, required this.movie});

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
  widget.movie.imagePath,
  height: 200,
),
Text(widget.movie.title),
Text(widget.movie.description),
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
Text(
  'Ticket price: ${widget.movie.formattedPrice}',
),
Text(
  'Total: £${(widget.movie.price * _ticketQuantity).toStringAsFixed(2)}',
),
ElevatedButton(
  onPressed: () {
  setState(() {

_bookingMessage = 'Added $_ticketQuantity tickets to the order. Total: £${(widget.movie.price * _ticketQuantity).toStringAsFixed(2)}';

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
