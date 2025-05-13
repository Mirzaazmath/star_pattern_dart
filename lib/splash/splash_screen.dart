import 'package:flutter/material.dart';
import 'package:star_pattern/landing_screen.dart';
import 'package:star_pattern/splash/sparkle_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this,duration: Duration(milliseconds: 900));
    _controller.forward();
    Future.delayed(const Duration(seconds:2), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LandingScreen()));
    });

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          alignment: Alignment(0, 0),
          children: [
            Sparkling(),
            ScaleTransition(
                scale: _controller,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterLogo(
                      size: 100,
                    ),
                    Text("Star Pattern",style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
