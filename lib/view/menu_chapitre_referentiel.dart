import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sirius_cftva/view/chapitre/chapitre_B.dart';
import 'package:sirius_cftva/view/chapitre/chapitre_E.dart';
import 'package:sirius_cftva/view/chapitre/chapitre_F.dart';
import 'package:sirius_cftva/view/chapitre/chapitre_c.dart';
import 'package:sirius_cftva/view/chapitre/chapitre_d.dart';

import 'chapitre/chapitre_A.dart';

class choix_chapitre extends StatelessWidget {
  const choix_chapitre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      appBar: AppBar(
        title: Text('Referentiel Conducteur CFTVA'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Choisissez votre Chapitre',
                      style: GoogleFonts.robotoCondensed(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chapitre_a()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Chapitre A',
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                "Signalisation, Règles d'exploitation",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chapitre_B()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Chapitre B',
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                "Composition, Freinage, Vitesse limite des trains",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 20,
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chapitre_C()));
                        },
                        child: Container(
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Chapitre C',
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                'Technique',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chapitre_D()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Chapitre D',
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Conduite et Circulation du train',
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chapitre_E()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Chapitre E',
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                'Sécurité du personnel\nOrganisation\nCommunication',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     PageRouteBuilder(
                          //       pageBuilder:
                          //           (context, animation, secondaryAnimation) =>
                          //               chapitre_F(),
                          //       transitionsBuilder: (context, animation,
                          //           secondaryAnimation, child) {
                          //         animation = CurvedAnimation(
                          //             curve: Curves.ease, parent: animation);
                          //         return FadeTransition(opacity: animation);
                          //       },
                          //     ));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chapitre_F()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  'Chapitre F',
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              Text(
                                'Anomalie-Incidents\nAccident',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
