import 'package:flutter/material.dart';
import 'package:kitabooks/navbarr/navbar.dart';

class Historyy extends StatelessWidget {
  final List<HistoryItem> historyItems = [
    HistoryItem(
      date: 'May 25, 2024',
      title: 'Course',
      details: 'Belajar bahasa mandarin',
    ),
    HistoryItem(
      date: 'May 31, 2024',
      title: 'Streaming',
      details: 'Belajar matematika',
    ),
    HistoryItem(
      date: 'May 23, 2024',
      title: 'Corse',
      details: 'Belajar ngaji',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF04424B),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 15),
              child: Text(
                "History",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: historyItems.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Text(
                          historyItems[index].date,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 4.0),
                        child: ListTile(
                          title: Text(
                            historyItems[index].title,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(historyItems[index].details),
                          onTap: () {},
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: Navbar(selectedItem: 2));
  }
}

class HistoryItem {
  final String date;
  final String title;
  final String details;

  HistoryItem({required this.date, required this.title, required this.details});
}
