import 'package:flutter/material.dart';
import 'package:kitabooks/Settings/General.dart';
import 'package:kitabooks/Settings/other.dart';
import 'package:kitabooks/navbarr/navbar.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool valNotify1 = true;
  bool valNotify2 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color(0xFF04424B)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Setting",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 50),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      buildSectionTitle("General"),
                      buildNotificationOption(
                        "Notification",
                        valNotify1,
                        onChangeFunction1,
                      ),
                      buildDivider(),
                      buildAccountOption(context, "Language"),
                      SizedBox(height: 8),
                      buildDivider(),
                      buildMessagesOption(),
                      SizedBox(height: 8),
                      buildDivider(),
                      SizedBox(
                        height: 62,
                      ),
                      buildSectionTitle("Other"),
                      buildListTile("Premium Features"),
                      buildDivider(),
                      buildListTile2("Logout", context),
                      buildDivider(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Navbar(selectedItem: 0));
  }
}
