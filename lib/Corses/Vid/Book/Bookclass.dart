import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/Book/bahanbook/biru.dart';
import 'package:kitabooks/Corses/Vid/bhnvid/stcatas.dart';

class BookNow extends StatelessWidget {
  const BookNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          stc(),
          SizedBox(height: 6),
          Center(
            child: Text(
              "Mrs.Hisanah",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 17),
          kotakbiru()
        ],
      ),
    );
  }
}
