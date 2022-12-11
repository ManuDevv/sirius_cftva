import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:sirius_cftva/services/batterie.dart';
import 'package:sirius_cftva/services/horloge.dart';
import 'package:sirius_cftva/services/difference_heure.dart';
import 'package:sirius_cftva/services/brightness.dart';
import 'package:sirius_cftva/services/localisation.dart';
import 'package:sirius_cftva/services/planning_firebase_storage.dart';
import 'package:sirius_cftva/view/choix_train.dart';
import 'package:sirius_cftva/view/components/ligne_40km_h.dart';
import 'package:sirius_cftva/view/components/ligne_Arques.dart';
import 'package:sirius_cftva/view/components/ligne_Blendecques.dart';
import 'package:sirius_cftva/view/components/ligne_Esquerdes.dart';
import 'package:sirius_cftva/view/components/ligne_Hallines.dart';
import 'package:sirius_cftva/view/components/ligne_La_coupole.dart';
import 'package:sirius_cftva/view/components/ligne_Lumbres.dart';
import 'package:sirius_cftva/view/info_secu.dart';

import 'package:sirius_cftva/view/renseignement_technique.dart';
import 'components/ligne_vide.dart';
import 'components/ligne_30km_h.dart';
import 'components/ligne_Setques.dart';
import 'detail_train.dart';


class colonne2 extends StatefulWidget {
  const colonne2({Key? key}) : super(key: key);

  @override
  State<colonne2> createState() => _colonne2State();
}

class _colonne2State extends State<colonne2> {
  final controller =
  ScrollController(initialScrollOffset: 300, keepScrollOffset: true);

  bool click = true;
  Location location = Location();
  late LocationData currentLocation;

  int valeurJour = 0;
  int valeurMateriel = 0;
  int valeurSens = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.bottomLeft,
                children: [
                  SingleChildScrollView(
                    controller: controller,
                    child: Container(
                      width: 600,
                      //height: 1000,
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(children: const [
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneVides(),
                        ligneArques(),
                          ligneTrenteKm_h(),
                          ligneVides(),
                        ligneBlendecques(),
                        ligneVides(),
                        ligneLaCoupole(),
                          ligneQuaranteKm_h(),
                          ligneTrenteKm_h(),
                        ligneVides(),
                          ligneHallines(),
                        ligneVides(),
                        ligneEsquerdes(),
                        ligneVides(),

                        ligneVides(),
                        ligneSetques(),
                        ligneVides(),
                        ligneQuaranteKm_h(),
                        ligneVides(),
                        ligneLumbres()


                      ]),
                    ),
                  ),

                  // ci dessous le rectangle rouge
                  Positioned(
                      bottom: 0,
                      child: Container(
                        margin: EdgeInsets.only(left: 12),
                        height: 60,
                        width: 980,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 5)),
                      )),
                ],
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: ListView(
              children: [

                brightness(),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Détail train'),
                      IconButton(
                          onPressed: () {
                            openDialog(context);
                              },
                    icon: Icon(Icons.arrow_forward_ios_outlined)
    )



                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('RT/Consigne de ligne'),
                      IconButton(
                          onPressed: () {
                         // Navigator.push(context, MaterialPageRoute(builder: (copntext)=>renseignements_technique()));
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Planning'),
                      IconButton(
                          onPressed: () {
                       //   Navigator.push(context, MaterialPageRoute(builder: (context)=>planning()));
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Info Sécu'),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (contex)=>infosecu()));
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
                Container(
                  height: 200,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border:
                        Border(bottom: BorderSide(color: Colors.black))),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  horloge(),
                                  batterie()
                                ],
                              ),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)
                              ),

                              child: Text('Retard: $diff min',

                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold
                                ),),
                            ),
                          //  Text('$currentLocation')

                          ],
                        ),
                      ],
                    )),


                /////////////Ligne avec les 4 icons //////////////
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {

                        },
                        icon:const  Icon(
                          Icons.schedule,
                          size: 50,
                          color: Colors.black38,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            click = !click;
                            timer();
                          });
                        },
                        icon: Icon(
                          (click) ? Icons.play_arrow : Icons.pause,
                          size: 50,
                        ),
                        color: Colors.black38,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (contex)=>choixTrain()));
                          },
                          icon:const  Icon(
                            Icons.text_snippet,
                            size: 50,
                            color: Colors.black38,
                          )),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => testLocation()));
                          },
                          icon:const  Icon(
                            Icons.mode_edit,
                            size: 50,
                            color: Colors.black38,
                          ))
                    ],
                  ),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }

  void timer() async {
    const second = Duration(seconds: 3);
    Timer.periodic(second, (timer) {
      scrollUp();

      print('fonction toutes les 3 seconds');
    });
  }

  void scrollUp() async {
    double latitudeArquespoint1 = 50.95;
    double longitudeArquespoint1 = 2.44;

    double latitudeArquespoint2 = 50.7200;
    double longitudeArquespoint2 = 2.45;

    double latitudequarante = 50.7242;
    double longitudequarante = 2.3000683;

    double latitudeBlendecque = 50.7165;
    double longitudeBlendecques = 2.28906;

    double latitudeTrente = 50.7145;
    double longitudeTrente = 2.2780383;


    location = new Location();
    location.onLocationChanged.listen((LocationData loc) {
      currentLocation = loc;
    });
    setState(() {
      currentLocation.latitude;
      currentLocation.longitude;
    });

    if (currentLocation.latitude! < latitudeArquespoint1 &&
        currentLocation.latitude! > latitudeArquespoint2 &&
    currentLocation.longitude! < longitudeArquespoint1 &&
    currentLocation.longitude! > longitudeArquespoint2
    ) {
      controller.animateTo(700,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      print('condition arques');

     differenceHeureArques();



    } else if (currentLocation.latitude! == latitudequarante &&
        currentLocation.longitude! == longitudequarante) {
      controller.animateTo(
          600, duration: Duration(seconds: 1), curve: Curves.easeIn);

      print('condition 40');
    } else if (
    currentLocation.latitude! == latitudeBlendecque &&
        currentLocation.longitude! == longitudeBlendecques
    ) {
      controller.animateTo(
          530, duration: Duration(seconds: 1), curve: Curves.easeIn);
      differenceHeureBlendecques();

      print('condition Blendecques');
    }

    else if (
    currentLocation.latitude! == latitudeTrente &&
        currentLocation.longitude! == longitudeTrente
    ) {
      controller.animateTo(
          470, duration: Duration(seconds: 1), curve: Curves.easeIn);
      differenceHeureLaCoupole();
      print('condition Coupole');
    }
    else if (currentLocation.latitude==latitudeTrente &&
    currentLocation.longitude== longitudeTrente){
      controller.animateTo(400, duration: Duration(seconds: 1), curve: Curves.easeIn);
    }
    print(currentLocation);
  }







}
