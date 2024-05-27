import 'package:flutter/material.dart';
import 'package:kitabooks/Corses/Vid/Coursesvid.dart';

class CourseListView extends StatefulWidget {
  final String title;
  final String price;
  final String profileName;
  final String profileImageAsset;

  const CourseListView({
    Key? key,
    required this.title,
    required this.price,
    required this.profileName,
    required this.profileImageAsset,
  }) : super(key: key);

  @override
  _CourseListViewState createState() => _CourseListViewState();
}

class _CourseListViewState extends State<CourseListView> {
  bool isSaved = false;

  void toggleSave() {
    setState(() {
      isSaved = !isSaved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: toggleSave,
                iconSize: 30,
                icon: Icon(
                  isSaved ? Icons.bookmark : Icons.bookmark_border,
                  color: isSaved ? Colors.orange : Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(widget.profileImageAsset),
              ),
              SizedBox(width: 8),
              Text(
                widget.profileName,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xFF97CCD4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Rp " + widget.price,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => coursessss()));
                },
                icon: Icon(Icons.shopping_cart, color: Colors.black),
                label: Text(
                  "Checkout",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFC432),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
