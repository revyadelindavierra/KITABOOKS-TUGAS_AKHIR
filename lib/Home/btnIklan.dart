import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/course.dart';

class btniklan extends StatelessWidget {
  const btniklan({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Courses()));
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFC554),
            ),
            child: Text(
              'See More',
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
