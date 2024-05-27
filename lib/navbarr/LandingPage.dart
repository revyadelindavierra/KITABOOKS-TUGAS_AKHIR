// import 'package:flutter/material.dart';
// import 'package:kitabooks/Corses/Vid/Coursesvid.dart';
// import 'package:kitabooks/Historypage/History.dart';
// import 'package:kitabooks/Home/Categorieshm.dart';
// import 'package:kitabooks/Home/HomePage.dart';
// import 'package:kitabooks/Home/Search.dart';
// import 'package:kitabooks/Home/Top.dart';
// import 'package:kitabooks/Home/btnIklan.dart';
// import 'package:kitabooks/PROFILE/profile.dart';

// class LadingPage extends StatefulWidget {
//   const LadingPage({Key? key}) : super(key: key);

//   @override
//   State<LadingPage> createState() => _LadingPageState();
// }

// class _LadingPageState extends State<LadingPage> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   final List<Widget> _pages = <Widget>[
//     HomePage(),
//     Historyy(),
//     coursessss(),
//     Profilenyakk(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: _pages[_selectedIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           onTap: _onItemTapped,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Beranda',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.list_alt_outlined),
//               label: 'Pesanan',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.chat_bubble),
//               label: 'Bantuan',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person_3),
//               label: 'Akun',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
