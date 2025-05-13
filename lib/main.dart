import 'package:flutter/material.dart';
import 'package:star_pattern/splash/sparkle_screen.dart';
import 'package:star_pattern/splash/splash_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black
      ),
      home: SplashScreen(),
    );
  }
}
