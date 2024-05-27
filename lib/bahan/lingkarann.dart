import 'package:flutter/material.dart';

class Lingkaran_nograd extends StatelessWidget {
  const Lingkaran_nograd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF04424B),
        ),
      ),
    );
  }
}
