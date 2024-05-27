import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/bhnvid/Rating.dart';
import 'package:kitabooks/Corses/Vid/bhnvid/bawah.dart';
import 'package:kitabooks/Corses/Vid/bhnvid/icontext.dart';
import 'package:kitabooks/Corses/Vid/bhnvid/stcatas.dart';

class coursessss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            stc(),
            SizedBox(height: 6),
            Center(
              child: Text(
                "Mrs.Hisanah",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Center(child: IconTextRow()),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Belajar dan mengenal huruf hijaiyah yang pastinya pelajaran ini akan terasa menyenangkan, tidak hanya materi yang diberikan tetapi juga praktek bersama ahlinya secara real time.",
                      style: TextStyle(fontSize: 16, color: Color(0xFF6F6F6F)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "Rating",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 172,
              child: ListView(
                scrollDirection: Axis.horizontal, // scroll horizontally
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: RatingWidget(
                      profileImage: 'lib/assets/ukhti.png',
                      name: 'John Doe',
                      rating: 4.5,
                      review:
                          'Very good! The teacher really masters the material',
                    ),
                  ),
                  SizedBox(width: 8),
                  RatingWidget(
                    profileImage: 'lib/assets/ukhti.png',
                    name: 'John Doe',
                    rating: 4.5,
                    review:
                        'Very good! The teacher really masters the material',
                  ),
                  SizedBox(width: 8),
                  RatingWidget(
                    profileImage: 'lib/assets/ukhti.png',
                    name: 'John Doe',
                    rating: 4.5,
                    review:
                        'Very good! The teacher really masters the material',
                  ),
                  SizedBox(width: 8),
                  RatingWidget(
                    profileImage: 'lib/assets/ukhti.png',
                    name: 'John Doe',
                    rating: 4.5,
                    review:
                        'Very good! The teacher really masters the material',
                  ),
                  SizedBox(width: 8),
                  RatingWidget(
                    profileImage: 'lib/assets/ukhti.png',
                    name: 'John Doe',
                    rating: 4.5,
                    review:
                        'Very good! The teacher really masters the material',
                  ),
                ],
              ),
            ),
            bawahnya(),
          ],
        ),
      ),
    );
  }
}
