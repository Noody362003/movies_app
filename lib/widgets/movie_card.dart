import 'package:flutter/material.dart';
import 'package:movie_app/utils/assets_app.dart';

import '../modules/movie_model.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({super.key,required this.movie});
  final Movie movie;

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 97,
      height: 184,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(4)
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage(widget.movie.image),fit: BoxFit.fill,width: 97,height: 127,),
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
          ),
          Row(
            children: [
              Icon(Icons.star,color: Colors.amber,size: 30,),
              Text('7.7'),//film rate
            ],
          ),
          Text(widget.movie.title),
        ],
      ),
    );
  }
}
