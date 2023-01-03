import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sirius_cftva/services/deconexion.dart';
import 'package:sirius_cftva/services/planning_firebase_storage_2.dart';
import 'package:sirius_cftva/view/choix_trainScreen.dart';
import 'package:sirius_cftva/view/menu_chapitre_referentiel.dart';

class mainMenu extends StatefulWidget {
  @override
  State<mainMenu> createState() => _mainMenuState();
}

class _mainMenuState extends State<mainMenu> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
          title: const Text(
            'Menu Principal',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.logout_rounded),
              onPressed: () {
                deconexion(context);
              },
            ),
          ]),
      body: Center(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors: [
                  Color(0xff0f7296),
                  Color(0xff0f7296),
                  Color(0xffa68f49)
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    planningFiebaseStorage2()));
                      },
                      child: Container(
                        height: 200,
                        width: 120,
                        child: Card(
                          color: Color.fromARGB(255, 136, 28, 120)
                              .withOpacity(0.8),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                  topLeft: Radius.circular(45))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50.0, left: 10),
                            child: Text(
                              "Planning \n CFTVA",
                              style: GoogleFonts.cormorantGaramond(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => choixTrain()));
                      },
                      child: Container(
                        height: 200,
                        width: 120,
                        child: Card(
                          color:
                              Color.fromARGB(255, 188, 77, 41).withOpacity(0.8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45),
                          )),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50.0, left: 10),
                            child: Text(
                              "SIRIUS \n CFTVA",
                              style: GoogleFonts.cormorantGaramond(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => choix_chapitre()));
                      },
                      child: Container(
                        height: 200,
                        width: 120,
                        child: Card(
                          color: Color.fromARGB(255, 131, 223, 143)
                              .withOpacity(0.8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                          )),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50.0, left: 10),
                            child: Text(
                              "Référentiel \n CFTVA",
                              style: GoogleFonts.cormorantGaramond(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 120,
                      child: Card(
                        color:
                            Color.fromARGB(255, 239, 235, 104).withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(45),
                        )),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50.0, left: 10),
                          child: Text(
                            "Quizz\n CFTVA",
                            style: GoogleFonts.cormorantGaramond(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),

      // cidessous une navigationBar au cas ou ....

      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   unselectedItemColor: Colors.grey.shade700,
      //   selectedItemColor: Colors.white,
      //   currentIndex: currentIndex,
      //   onTap: (index) => setState(() {
      //     currentIndex = index;
      //   }),
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
      //   ],
      // )
    );
  }
}
