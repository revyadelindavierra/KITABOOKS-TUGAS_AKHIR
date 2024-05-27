import 'package:flutter/material.dart';
import 'package:kitabooks/Home/Categorieshm.dart';
import 'package:kitabooks/Home/Search.dart';
import 'package:kitabooks/Home/Top.dart';
import 'package:kitabooks/Home/btnIklan.dart';
import 'package:kitabooks/navbarr/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
        backgroundColor: Color(0xFF04424B),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 13),
          children: [
            SizedBox(height: 45),
            Row(
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
                Padding(
                  padding: EdgeInsets.only(left: 10),
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
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.only(right: 9),
              child: CustomSearchView(
                controller: searchController,
                hintText: 'Search here!',
              ),
            ),
            SizedBox(height: 15),
            Stack(
              children: [
                Container(
                  height: 165,
                  width: 350,
                  child: Image.asset(
                    'lib/assets/gettoknow.png',
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
            SizedBox(height: 10),
            scrollnya(),
            SizedBox(height: 15),
            toptop(),
          ],
        ),
        bottomNavigationBar: Navbar(selectedItem: 0));
  }
}
