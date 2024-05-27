import 'package:flutter/material.dart';
import 'package:kitabooks/bahan/buletan.dart';
import 'package:kitabooks/bahan/tulis.dart';

class Introslide2 extends StatelessWidget {
  final PageController controller;

  const Introslide2({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var screenth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/plus.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          BuletBulet(),
          Positioned(
            child: Tuliss(controller: controller),
          ),
        ],
      ),
    );
  }
}
