import 'package:flutter/material.dart';
import 'package:kitabooks/Home/btnIklan.dart';

class toptop extends StatelessWidget {
  toptop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Tranding Course",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 165,
                    width: 380,
                    child: Image.asset(
                      'lib/assets/Hukum.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 35,
                    child: btniklan(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
