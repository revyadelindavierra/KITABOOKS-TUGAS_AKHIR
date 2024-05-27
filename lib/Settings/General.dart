import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget buildSectionTitle(String title) {
  Widget buildDivider() {
    return Divider(height: 1, color: Colors.grey);
  }

  return Padding(
    padding: const EdgeInsets.only(left: 10, top: 10),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildNotificationOption(
  String title,
  bool value,
  Function onChangeMethod,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 12.0),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          leading: Icon(Icons.notifications),
          trailing: Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.green,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildAccountOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Arabian"),
                Text("English"),
                Text("German"),
                Text("Indonesian"),
                Text("Japanese"),
                Text("Mandarin"),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"),
              ),
            ],
          );
        },
      );
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: ListTile(
        leading: Icon(Icons.language),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
      ),
    ),
  );
}

Widget buildMessagesOption() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, top: 12),
    child: Row(
      children: [
        Icon(Icons.message),
        SizedBox(width: 17),
        Text(
          "Messages",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
      ],
    ),
  );
}
