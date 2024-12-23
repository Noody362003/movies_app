import 'package:flutter/material.dart';

import '../modules/movie_model.dart';
import '../utils/assets_app.dart';

class MoviePoster extends StatefulWidget {
  const MoviePoster({super.key,required this.movie});
  final Movie movie;
  @override
  State<MoviePoster> createState() => _MoviePosterState();
}

class _MoviePosterState extends State<MoviePoster> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage(widget.movie.image),fit: BoxFit.cover,width: 129,height: 199,),
        Positioned(
          top: 0,
          left: 0,
          child: GestureDetector(
            onTap: () {
              widget.movie.isSelected=!widget.movie.isSelected;
              setState(() {

              });
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AssetsApp.bookMarkIcon)),
                color: widget.movie.isSelected ? Colors.orange : Colors.black54,
              ),
              child: Icon(
                widget.movie.isSelected ? Icons.check : Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
