import 'package:flutter/material.dart';

import '../../utils/assets_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String home = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> icons = [];
  int indexOfIcons = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: createBottomNavBar(),
    ));
  }

  Widget createBottomNavBar() => BottomNavigationBar(
          onTap: (index) {
            indexOfIcons = index;
            setState(() {});
          },
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
              label: 'Brows',
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
          ]);
}
