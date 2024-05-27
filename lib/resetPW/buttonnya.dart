import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kitabooks/OTP/OTP.dart';
import 'package:kitabooks/OTP/OTPPage.dart';

class buttonnyaaa extends StatelessWidget {
  const buttonnyaaa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OTPPage()));
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFC554),
              fixedSize: Size(300, 48),
            ),
            child: Text(
              'Send OTP',
              style: TextStyle(color: Colors.black54, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
