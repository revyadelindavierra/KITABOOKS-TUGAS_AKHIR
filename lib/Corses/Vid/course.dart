import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/bahanbahan/kotakawal.dart';
import 'package:kitabooks/Corses/bahanbahan/list.dart';
import 'package:kitabooks/Corses/bahanbahan/searchhh.dart';
import 'dart:math' as math;

import 'package:kitabooks/Settings/Setting.dart';
import 'package:kitabooks/navbarr/navbar.dart';

class Courses extends StatelessWidget {
  Courses({Key? key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF04424B),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 13),
          children: [
            SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 39,
                  width: 39,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 16, 26, 31),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'lib/assets/Profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Minie The Poo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Premium fans',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: 180 * math.pi / 180,
                  child: IconButton(
                    icon: Icon(
                      Icons.sort,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingPage()));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            LeftBubbleChat(message: 'Welcome!', timestamp: 'LALA LOHA HAHO'),
            SizedBox(height: 12),
            SearchBox(controller: searchController, hintText: "SearchHere!"),
            SizedBox(height: 22),
            Text(
              "Best Courses",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            CourseListView(
              title: "Course jalan jalan \ndi kebun raya lala",
              price: "35.000",
              profileName: 'Lala',
              profileImageAsset: 'lib/assets/Profile.jpg',
            ),
            SizedBox(height: 12),
            CourseListView(
              title: "Course jalan jalan \ndi kebun raya lala",
              price: "155.000",
              profileName: 'Lala',
              profileImageAsset: 'lib/assets/Profile.jpg',
            ),
            SizedBox(height: 12),
            CourseListView(
              title: "Course jalan jalan \ndi kebun raya lala",
              price: "45.000",
              profileName: 'Lala',
              profileImageAsset: 'lib/assets/Profile.jpg',
            )
          ],
        ),
        bottomNavigationBar: Navbar(selectedItem: 2));
  }
}
