import 'package:flutter/material.dart';
import 'package:kitabooks/Story/cruch.dart';
import 'package:kitabooks/Story/kabah.dart';
import 'package:kitabooks/navbarr/navbar.dart';

class Dashboard extends StatelessWidget {
  var height, width;

  List<Map<String, dynamic>> gridData = [
    {"title": "History of Vihara", "image": "lib/assets/image66.png"},
    {"title": "History of Islam", "image": "lib/assets/image57.png"},
    {"title": "History of Buddha", "image": "lib/assets/image63.png"},
    {"title": "History of Mosque", "image": "lib/assets/masjid.png"},
    {"title": "History of Christian", "image": "lib/assets/image60.png"},
    {"title": "History of Chruch", "image": "lib/assets/gereja.jpg"},
    {"title": "History of Pagoda", "image": "lib/assets/klenteng.jpg"},
    {"title": "What is Miao?", "image": "lib/assets/miao.jpg"},
    {
      "title": "The most bigger cruch in the world",
      "image": "lib/assets/katolik.jpg"
    },
    {"title": "Icon of Region", "image": "lib/assets/lambang.jpg"},
    {"title": "History of Hindu", "image": "lib/assets/hisrotihindu.jpg"},
    {"title": "What is Pancha Sadra?", "image": "lib/assets/panca.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF04424B),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 13), children: [
        SizedBox(height: 45),
        Row(
          children: [
            Container(
              height: 39,
              width: 39,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 16, 26, 31),
                borderRadius: BorderRadius.circular(19),
              ),
              child: ClipOval(
                child: Image.asset(
                  'lib/assets/Profile.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Minie The Poo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Premium fans',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        Divider(
          color: Colors.white,
          thickness: 1,
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 13),
          child: Text(
            'Story',
            style: TextStyle(
                color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 14),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: gridData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryPage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage(gridData[index]['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7)
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      left: 10,
                      right: 10,
                      child: Text(
                        gridData[index]['title'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ]),
      bottomNavigationBar: Navbar(selectedItem: 1),
    );
  }
}
