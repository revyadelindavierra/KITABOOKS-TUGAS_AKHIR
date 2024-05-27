import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:kitabooks/intro/intro2.dart';

class INtroo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'lib/assets/Logo_Kita.png',
      splashIconSize: 9800,
      nextScreen: LandingPage(),
      splashTransition: SplashTransition.sizeTransition,
      backgroundColor: Color(0xFF04424B),
    );
  }
}
