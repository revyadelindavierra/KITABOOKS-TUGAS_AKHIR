import 'package:flutter/material.dart';
import 'package:kitabooks/bahan/Button.dart';
import 'package:kitabooks/bahan/buletan.dart';

class IntroSlide3 extends StatelessWidget {
  const IntroSlide3({super.key});

  @override
  Widget build(BuildContext context) {
    var screenth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          Container(
            width: screenth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/budha.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          BuletBulet(),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 175),
              child: Text(
                'WELCOME',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 285),
              child: Text(
                'This app was created to\ndeliver an experience.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                ),
              ),
            ),
          ),
          // Positioned(child: Tuliss()),
        ],
      ),
    ));
  }
}
