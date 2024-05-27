import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kitabooks/Home/HomePage.dart';
import 'package:kitabooks/signupp/Signup.dart';

class ButonLogin extends StatelessWidget {
  const ButonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFFFC554),
            fixedSize: Size(300, 48),
          ),
          child: Text(
            'Login',
            style: TextStyle(color: Colors.black54, fontSize: 20),
          ),
        ),
        SizedBox(height: 25),
        RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: "Don't have an account? ",
              ),
              TextSpan(
                text: "Register now",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
