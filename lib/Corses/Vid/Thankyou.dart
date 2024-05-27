import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/course.dart';

class Thankyou extends StatelessWidget {
  const Thankyou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 525,
                decoration: BoxDecoration(
                  color: Color(0xFFCEE7EA),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/assets/thanks.png',
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Thank You",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Semoga Dapat Bermanfaat",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 55),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Courses()));
                      },
                      child: Text("Next"),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFC554),
                        padding: EdgeInsets.symmetric(horizontal: 88),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
