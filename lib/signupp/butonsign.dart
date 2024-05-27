import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kitabooks/Home/HomePage.dart';
import 'package:kitabooks/OTP/OTPPage.dart';
import 'package:kitabooks/OTP/verifikasibtn.dart';
import 'package:kitabooks/Signin/signin_page.dart';

class btnupp extends StatelessWidget {
  const btnupp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
            'Verify',
            style: TextStyle(color: Colors.black54, fontSize: 20),
          ),
        ),
        SizedBox(height: 22),
        RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: "Already have an account? ",
              ),
              TextSpan(
                text: "Log in now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signinn()));
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
