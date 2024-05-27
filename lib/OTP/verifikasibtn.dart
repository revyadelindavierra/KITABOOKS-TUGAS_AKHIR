import 'package:flutter/material.dart';
import 'package:kitabooks/Home/HomePage.dart';

class verifikasii extends StatelessWidget {
  const verifikasii({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFC554),
              fixedSize: Size(300, 48),
            ),
            child: Text(
              'Verify',
              style: TextStyle(color: Colors.black54, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
