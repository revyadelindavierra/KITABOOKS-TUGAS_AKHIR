import 'package:flutter/material.dart';
import 'package:kitabooks/navbarr/navbar.dart';

class Profilenyakk extends StatelessWidget {
  const Profilenyakk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF04424B),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 75),
              Center(
                child: ClipOval(
                  child: Image.asset(
                    'lib/assets/imut.png',
                    fit: BoxFit.cover,
                    width: 125,
                    height: 125,
                  ),
                ),
              ),
              Text(
                "Lalalalala lakllaklkdj",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Lalalalala@gmail.com',
                  style: TextStyle(
                    color: Color(0xFF5A5A5A),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 85),
              Row(
                children: [
                  SizedBox(height: 55),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text(
                          "Premium",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.verified,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      "Top up >>",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(height: 55),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text(
                          "Change Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      "Change >>",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Navbar(selectedItem: 3));
  }
}
