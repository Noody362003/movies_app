import 'package:flutter/material.dart';
import 'package:movie_app/utils/assets_app.dart';

import '../home_view/home_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  static const String splash = "/splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 5),
            (){
          Navigator.pushReplacementNamed(context, HomeScreen.home);
        }
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20,),
            Image(image: AssetImage(AssetsApp.splash),width: 168,height: 187,),
            Image(image: AssetImage(AssetsApp.splashBranding),width: 213,height: 128,),

          ],
        ),
      ),
    );
  }
}
