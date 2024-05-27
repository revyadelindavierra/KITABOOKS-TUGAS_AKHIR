import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/bhnvid/bahanvid.dart';
import 'package:kitabooks/Story/atas.dart';

class Stackkkk extends StatelessWidget {
  Stackkkk({super.key});
  List<String> imagePaths = [
    'lib/assets/chruch.png',
    'lib/assets/storybudha.png',
    'lib/assets/kabah.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        atasnyass(),
        ...imagePaths
            .map((path) => Padding(
                  padding: EdgeInsets.only(top: 175),
                  child: Center(
                    child: Container(
                      height: 180,
                      width: 350,
                      child: Image.asset(
                        path,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ))
            .toList(),
      ],
    );
  }
}
