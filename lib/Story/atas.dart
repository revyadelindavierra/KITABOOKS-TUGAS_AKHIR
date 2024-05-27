import 'package:flutter/material.dart';
import 'package:kitabooks/Story/SToryPage/STORYDSH.dart';

class atasss extends StatelessWidget {
  const atasss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 284,
          decoration: BoxDecoration(
            color: Color(0xFFE3FAFE),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 85, left: 25),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
              ),
              SizedBox(width: 15),
              Text(
                'Story of Kabah',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
