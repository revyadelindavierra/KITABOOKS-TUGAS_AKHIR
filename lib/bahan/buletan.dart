import 'package:flutter/material.dart';

class BuletBulet extends StatelessWidget {
  BuletBulet({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHidth = MediaQuery.of(context).size.height;
    var circleWidth = 170.0;
    var circleHeight = 100.0;
    return Stack(
      children: [
        for (var i = 0; i < 1000; i++)
          Positioned(
            left: i * (circleWidth),
            top: 347,
            child: Container(
              width: circleWidth,
              height: circleHeight,
              decoration: ShapeDecoration(
                color: Color(0xFF04424B),
                shape: OvalBorder(),
              ),
            ),
          ),
        Positioned(
          left: 0,
          top: 397,
          child: Container(
            width: screenWidth,
            height: screenHidth,
            decoration: BoxDecoration(color: Color(0xFF04424B)),
          ),
        ),
      ],
    );
  }
}
