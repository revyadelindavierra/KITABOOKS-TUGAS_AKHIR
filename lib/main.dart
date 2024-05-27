import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/Coursesvid.dart';
import 'package:kitabooks/Corses/Vid/course.dart';
import 'package:kitabooks/Home/HomePage.dart';
import 'package:kitabooks/PROFILE/profile.dart';
import 'package:kitabooks/Story/SToryPage/STORYDSH.dart';
import 'package:kitabooks/Story/kabah.dart';
import 'package:kitabooks/intro/intro1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/": (context) => INtroo(),
        '/Home': (context) => HomePage(),
        '/History': (context) => Dashboard(),
        '/Course': (context) => Courses(),
        '/Profile': (context) => Profilenyakk(),
      },
    );
  }
}
