import 'package:flutter/material.dart';
import 'package:kitabooks/intro/intro2.dart';

Widget buildOtherOptions() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
  );
}

Widget buildDivider() {
  return Divider(height: 1, color: Colors.grey);
}

Widget buildListTile(String title) {
  return ListTile(
    leading: Icon(Icons.verified),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.grey[600],
      ),
    ),
  );
}

Widget buildListTile2(String title, BuildContext context) {
  return ListTile(
    leading: Icon(Icons.logout),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.grey[600],
      ),
    ),
    onTap: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LandingPage()));
    },
  );
}
