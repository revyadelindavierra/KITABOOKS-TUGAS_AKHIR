import 'package:flutter/material.dart';
import 'package:kitabooks/OTP/OTP.dart';
import 'package:kitabooks/OTP/verifikasibtn.dart';
import 'package:kitabooks/bahan/lingkaran.dart';
import 'package:kitabooks/bahan/lingkarann.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF04424B),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 65, left: 28),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'lib/assets/logo_aja.png',
                          height: 70,
                          width: 70,
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 5,
                left: 240,
                child: GradientCircle(),
              ),
              Positioned(
                bottom: 15,
                left: 245,
                child: Lingkaran_nograd(),
              ),
            ],
          ),
          SizedBox(height: 70),
          Container(
            width: double.infinity,
            height: 560,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            padding: EdgeInsets.only(left: 15, right: 15, top: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Code Verification',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 41, 30, 30),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  child: Text(
                    'Enter verification code here ',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 41, 30, 30),
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: otpp(),
                ),
                SizedBox(height: 110),
                verifikasii(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
