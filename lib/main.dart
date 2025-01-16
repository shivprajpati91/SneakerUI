
import 'package:flutter/material.dart';
import 'package:sneakersshop/view/OnBoarding/onBoarding.dart';
import 'package:sneakersshop/view/Splash/splash.dart';
import 'package:sneakersshop/view/navigator.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
      ),
      title: 'Sneakers Shop App',
      home: SplashScreen(),
    );
  }
}
