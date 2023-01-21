import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius_cftva/services/planning_firebase_storage.dart';
import 'package:sirius_cftva/view/choix_trainScreen.dart';
import 'package:sirius_cftva/view/main_menuScreen.dart';
import 'package:sirius_cftva/view/main_sirius.dart';

int currentIndex = 0;
final screens = [
  mainMenu(),
  planning(),
  choixTrain(),
];

// ignore: non_constant_identifier_names
class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        unselectedItemColor: Colors.grey.shade700,
        selectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items:const  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded), label: "Planning"),
          BottomNavigationBarItem(icon: Icon(Icons.train_rounded), label: "AMAC"),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_stories_rounded), label: "Documents"),
        ],
      ),
    );
  }
}
