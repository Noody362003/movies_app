import 'package:flutter/material.dart';
import 'package:movie_app/views/home_view/home_screen.dart';
import 'package:movie_app/views/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        Splash.splash: (_)=>const Splash(),
        HomeScreen.home:(_)=>const HomeScreen()
      },
      initialRoute: Splash.splash,
    );
  }
}

