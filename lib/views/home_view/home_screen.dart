import 'package:flutter/material.dart';
import 'package:movie_app/views/home_view/taps/browse/Browse.dart';
import 'package:movie_app/views/home_view/taps/home/home_tap.dart';
import 'package:movie_app/views/home_view/taps/search/search.dart';
import 'package:movie_app/views/home_view/taps/watchList/watchList.dart';

import '../../utils/assets_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String home = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> taps = [Home(), Search(), Browse(), WatchList()];
  int indexOfIcons = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: taps[indexOfIcons],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          onTap: (index) {
            indexOfIcons = index;
            setState(() {});
          },
          currentIndex: indexOfIcons,
          items: const [
            BottomNavigationBarItem(
                label: "Home", icon: ImageIcon(AssetImage(AssetsApp.homeIcon))),
            BottomNavigationBarItem(
              label: 'Search',
              icon: ImageIcon(
                AssetImage(
                  AssetsApp.searchIcon,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Browse',
              icon: ImageIcon(
                AssetImage(
                  AssetsApp.browseIcon,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'WatchList',
              icon: ImageIcon(
                AssetImage(
                  AssetsApp.watchListIcon,
                ),
              ),
            ),
          ]),
    ));
  }
}
