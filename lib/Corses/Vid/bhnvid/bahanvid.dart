import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/Coursesvid.dart';
import 'package:kitabooks/Corses/Vid/course.dart';
import 'package:kitabooks/Story/SToryPage/STORYDSH.dart';

class atasnyass extends StatelessWidget {
  const atasnyass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 224,
          child: Image.asset(
            'lib/assets/atascrs.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 224,
          decoration: BoxDecoration(color: Colors.black26),
        ),
        Padding(
          padding: EdgeInsets.only(top: 85, left: 25),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                iconSize: 45,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Courses()));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
