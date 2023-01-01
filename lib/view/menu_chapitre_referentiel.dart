import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sirius_cftva/view/chapitre/chapitre_B.dart';
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
      body: Container(
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
                  fontSize: 30
                )),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent
                      ),
                      onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>chapitre_a()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Chapitre A',
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                              ),),
                            Text("Signalisation, Règles d'exploitation",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 30,

                              ),)
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent
                      ),
                      onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>chapitre_B()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Chapitre B',
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                              ),),
                            Text("Composition, Freinage, Vitesse limite des trains",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 30,

                              ),)
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
                        shadowColor: Colors.transparent
                      ),
                      onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>chapitre_c()));
                      },
                      child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Chapitre C',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                            ),),
                            Text('Technique',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 30,

                            ),)
                          ],
                        ),
                      ),
                    ),



                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent
                      ),
                      onPressed: (){
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>chapitre_D()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Chapitre D',
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                              ),),
                            Text('Conduite et Circulation du train',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 30,

                              ),)
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
    );
  }
}
