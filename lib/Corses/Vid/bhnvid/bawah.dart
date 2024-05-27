import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/Book/Bookclass.dart';

class bawahnya extends StatelessWidget {
  const bawahnya({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 12, top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price: ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Rp35.000 /Class",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookNow()));
                },
                child: Text("Book Now"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFC432),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
