import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  final int selectedItem;
  Navbar({Key? key, required this.selectedItem}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedNavbar = 3;

  @override
  void initState() {
    super.initState();
    selectedNavbar = widget.selectedItem;
  }

  void changeSelectedNavbar(int index) {
    setState(() {
      selectedNavbar = index;
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/Home');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/History');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/Course');
    } else if (index == 3) {
      Navigator.pushNamed(context, '/Profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Course',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Color(0xFF04424B),
      unselectedItemColor: Colors.grey,
      currentIndex: selectedNavbar,
      onTap: changeSelectedNavbar,
    );
  }
}
