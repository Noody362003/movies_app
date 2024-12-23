import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/utils/assets_app.dart';
import 'package:movie_app/widgets/movie_poster.dart';
import 'package:movie_app/widgets/movies_recommended_listview.dart';

import '../../../../modules/movie_model.dart';
import '../../../../widgets/new_release_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<Movie> movies = [
      Movie(title: "Narcos", image: 'assets/images/film_full_cover.png'),
      Movie(title: "Narcos", image: 'assets/images/film_full_cover.png'),
      Movie(title: "Narcos", image: 'assets/images/film_full_cover.png'),
      Movie(title: "Narcos", image: 'assets/images/film_full_cover.png'),
      Movie(title: "Narcos", image: 'assets/images/film_full_cover.png'),
      Movie(title: "Narcos", image: 'assets/images/film_full_cover.png'),
    ];

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: double.infinity,
            height: 289,
            color: Colors.transparent,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/images/film_cover.png'),
                      width: double.infinity,
                      height: 217,
                      fit: BoxFit.cover,
                    ),
                    ImageIcon(AssetImage(AssetsApp.playButtonIcon),color: Colors.white,size: 40,)
                  ],
                  alignment: AlignmentDirectional.center,
                ),
                Positioned(
                  bottom: 0,
                  left: 21,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MoviePoster(movie: movies[0]),
                      Padding(
                        padding: const EdgeInsets.only(left: 14,bottom: 19),
                        child: Column(
                          children: [
                            Text(
                              'Film Title',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('2019  PG-13  2h 7m',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.w400))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ReleaseListView(moviesList: movies, category: 'New Releases'),
          MoviesListView(moviesList: movies, category: 'Recommended')
        ],
      ),
    );
  }
}
