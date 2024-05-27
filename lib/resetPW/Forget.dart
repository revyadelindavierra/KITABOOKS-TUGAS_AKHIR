import 'package:flutter/material.dart';
import 'package:kitabooks/Signin/login_btn.dart';
import 'package:kitabooks/bahan/lingkaran.dart';
import 'package:kitabooks/bahan/lingkarann.dart';
import 'package:kitabooks/resetPW/Forget.dart';
import 'package:kitabooks/resetPW/buttonnya.dart';
import 'package:kitabooks/signupp/butonsign.dart';

class forgett extends StatefulWidget {
  @override
  State<forgett> createState() => _forgettState();
}

class _forgettState extends State<forgett> {
  bool _isPasswordVisible = false;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(1, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF04424B)),
        child: Column(
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
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 75,
                  left: 240,
                  child: GradientCircle(),
                ),
                Positioned(
                  bottom: 85,
                  left: 245,
                  child: Lingkaran_nograd(),
                ),
              ],
            ),
            SizedBox(height: 55),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                padding: EdgeInsets.only(left: 15),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 45),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 41, 30, 30),
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            top: 2,
                          ),
                          child: Text(
                            'Please enter the email associated \nwith your account. ',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 41, 30, 30),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 61,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                            ),
                          ),
                        ),
                        SizedBox(height: 90),
                        buttonnyaaa()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
