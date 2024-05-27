import 'package:flutter/material.dart';
import 'package:kitabooks/bahan/buletan.dart';
import 'package:kitabooks/bahan/tulis.dart';

class IntroSlide1 extends StatelessWidget {
  IntroSlide1({super.key, required this.controller});
  final PageController controller;

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
                image: AssetImage('lib/assets/masjid.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          BuletBulet(),
          Positioned(
            child: Tuliss(controller: controller),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    ));
  }
}
