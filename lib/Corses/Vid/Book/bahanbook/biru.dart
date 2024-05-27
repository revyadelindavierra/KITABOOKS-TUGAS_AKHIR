import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/Book/bahanbook/icontext.dart';
import 'package:kitabooks/Corses/Vid/Thankyou.dart';

class kotakbiru extends StatelessWidget {
  const kotakbiru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xFFCEE7EA),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 45),
            Text(
              "Price",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Rp35.000 / Class",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 22),
            ICONN(),
            SizedBox(height: 22),
            Padding(
              padding: EdgeInsets.only(left: 45, right: 22),
              child: Text(
                "Belajar dan mengenal huruf hijaiyah yang pastinya pelajaran ini akan terasa menyenangkan, tidak hanya materi yang diberikan tetapi juga praktek bersama ahlinya secara real time.",
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 65),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Thankyou()));
              },
              child: Text(
                "Book Jadwal Now >>",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFC432),
                padding: EdgeInsets.symmetric(horizontal: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
