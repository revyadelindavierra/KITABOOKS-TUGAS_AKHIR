import 'package:flutter/material.dart';

class scrollnya extends StatelessWidget {
  scrollnya({Key? key}) : super(key: key);

  final List<String> imagePaths = [
    "lib/assets/scourse.png",
    "lib/assets/courses.png",
    "lib/assets/rules.png",
  ];
  final List<String> texttt = [
    "History",
    "Courses",
    "Rules",
  ];

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
                  "Categories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(imagePaths.length, (index) {
                return Container(
                  width: (MediaQuery.of(context).size.width - 64) / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        imagePaths[index],
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 5),
                      Text(
                        texttt[index],
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
