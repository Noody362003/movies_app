import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_card.dart';

import '../modules/movie_model.dart';

class MoviesListView extends StatelessWidget {
  const MoviesListView({super.key, required this.moviesList, required this.category});
  final List<Movie> moviesList;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
      children: [
        // Category Title
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            category,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        // Movies List
        SizedBox(
          height: 186, // Define the height for the ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: moviesList.length,
            itemBuilder: (context, index) => MovieCard(movie: moviesList[index]),
          ),
        ),
      ],
    );
  }
}
