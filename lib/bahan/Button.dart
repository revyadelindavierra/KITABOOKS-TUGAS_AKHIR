import 'package:flutter/material.dart';
import 'package:kitabooks/Signin/signin_page.dart';

class BUttonnn extends StatelessWidget {
  final int currentPage;
  final PageController controller;

  const BUttonnn({
    super.key,
    required this.currentPage,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          if (currentPage == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signinn()),
            );
          } else {
            controller.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          }
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          fixedSize: Size(300, 45),
        ),
        child: Text(
          currentPage == 2 ? 'Register Now' : 'Next',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 1.2,
          ),
        ),
      ),
    );
  }
}
