import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/bhnvid/bahanvid.dart';

class stc extends StatelessWidget {
  const stc({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        atasnyass(),
        Padding(
          padding: EdgeInsets.only(top: 175),
          child: Center(
            child: Container(
              height: 97,
              width: 90,
              child: Image.asset(
                'lib/assets/ukhti.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
