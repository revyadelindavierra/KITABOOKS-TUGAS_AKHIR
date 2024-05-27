import 'package:flutter/material.dart';

class LeftBubbleChat extends StatelessWidget {
  final String message;
  final String timestamp; // Tambahkan properti untuk timestamp

  const LeftBubbleChat(
      {Key? key, required this.message, required this.timestamp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 183,
        width: 189,
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xFF97CCD4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 65, right: 105),
              child: Text(
                message,
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.only(right: 55),
              child: Text(
                timestamp,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
