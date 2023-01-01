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

class colonne1 extends StatefulWidget {
  const colonne1({
    Key? key,
  }) : super(key: key);

  @override
  State<colonne1> createState() => _colonne1State();
}

class _colonne1State extends State<colonne1> {
  final controller =
      ScrollController(initialScrollOffset: 300, keepScrollOffset: true);

  bool click = true;
  Location location = Location();

  LocationData? _current_Location;

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
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: 600,
                      //height: 1000,
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                        ligneLumbres(),
                        ligneVides(),
                        ligneTrenteKm_h(),
                        ligneVides(),
                        ligneSetques(),
                        ligneVides(),
                        ligneEsquerdes(),
                        ligneVides(),
                        ligneHallines(),
                        ligneQuaranteKm_h(),
                        ligneVides(),
                        ligneTrenteKm_h(),
                        ligneVides(),
                        ligneLaCoupole(),
                        ligneVides(),
                        ligneBlendecques(),
                        ligneVides(),
                        ligneQuaranteKm_h(),
                        ligneVides(),
                        ligneArques()
                      ]),
                    ),
                  ),
                ),

                // ci dessous le rectangle rouge
                Positioned(
                    bottom: 0,
                    child: Container(
                      margin: EdgeInsets.only(left: 12, bottom: 20),
                      height: 60,
                      width: 980,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 5)),
                    )),
               
                Positioned(
                    bottom: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 20, 5),
                          child: Text("VL"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 20, 5),
                          child: Text('PK'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 10, 20, 5),
                          child: Text("Etabliseement"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(90, 10, 20, 5),
                          child: Text("Horraires"),
                        )
                      ],
                    ))
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
                      Text('RT/Consigne de ligne'),
                      IconButton(
                          onPressed: () {
                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>renseignements_technique()));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>planning()));
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (contex) => infosecu()));
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [horloge(), batterie()],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Text(
                                diff != null
                                    ? "Retard: $diff min"
                                    : "Retard:  min",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),

                /////////////Ligne avec les 4 icons //////////////
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
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
                            void stopTimer() {}
                          },
                          icon: const Icon(
                            Icons.stop,
                            size: 50,
                            color: Colors.black38,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
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

  void stopTimer() async {
    
  }

  void scrollUp() async {
    late LocationData current_Location;

    //test sur portable boulot
    double latitudeArquespoint1 = 50.970;
    double latitudeArquespoint2 = 50.960;
    double longitudeArquespoint1 = 2.450;
    double longitudeArquespoint2 = 2.400;

    //coordonées ci dessous bonnes

    // double latitudeArquespoint1 = 50.729155;
    // double latitudeArquespoint2 = 50.7271;
    // double longitudeArquespoint1 = 2.302659;
    // double longitudeArquespoint2 = 2.301656;

    double latitudequarantepoint1 = 50.72263;
    double latitudequarantepoint2 = 50.72159;
    double longitudequarantepoint1 = 2.29821;
    double longitudequarantepoint2 = 2.29677;

    double latitudeBlendecquepoint1 = 50.71415;
    double latitudeBlendecquepoint2 = 50.71352;
    double longitudeBlendecquespoint1 = 2.27557;
    double longitudeBlendecquespoint2 = 2.27323;

    double latidudeCoupolepoint1 = 50.70691;
    double latidudeCoupolepoint2 = 50.70672;
    double longitudeCoupolepoint1 = 2.24654;
    double longitudeCoupolepoint2 = 2.23680;

    double latitudeTrenteWizernepoint1 = 50.70672;
    double latidudeTrenteWizernepoint2 = 50.70640;
    double longitudeTrenteWizernepoint1 = 2.23680;
    double longitudeTrenteWizernepoint2 = 2.23353;

    double latitudeQuaranteWizernepoint1 = 50.70640;
    double latidudequaranteWizernzepoint2 = 50.70519;
    double longitudequaranteWizernepoint1 = 2.23353;
    double longitudequaranteWizernepoint2 = 2.22837;

    double latitudeHallinepoint1 = 50.70448;
    double latitudeHallinepoint2 = 50.70362;
    double longitudeHallinepoint1 = 2.22118;
    double longitudeHallinepoint2 = 2.20856;

    double latitudeEsquerdepoint1 = 50.70270;
    double latitudeEsquerdepoint2 = 50.70526;
    double longitudeEsquerdepoint1 = 2.18878;
    double longitudeEsquerdepoint2 = 2.17663;

    double latitudeSetquespoint1 = 50.70859;
    double latitudeSetquespoint2 = 50.70614;
    double longitudeSetquespoint1 = 2.15845;
    double longitudeSetquespoint2 = 2.15146;

    double latitude_trente_Lumbres_point1 = 50.70503;
    double latitude_trente_Lumbres_point2 = 50.70131;
    double longitude_trente_Lumbres_point1 = 2.12854;
    double longitude_trente_Lumbres_point2 = 2.12282;

    double latitudeLumbrespoint1 = 50.70131;
    double longitudeLumbrespoint2 = 2.12282;

    _current_Location = await location.getLocation();

    location = new Location();
    location.onLocationChanged.listen((LocationData loc) {
      _current_Location = loc;
    });
    setState(() {
      _current_Location!.latitude;
      _current_Location!.longitude;
    });
    print(_current_Location);

    if (_current_Location!.latitude! < latitudeArquespoint1 &&
        _current_Location!.latitude! > latitudeArquespoint2 &&
        _current_Location!.longitude! < longitudeArquespoint1 &&
        _current_Location!.longitude! > longitudeArquespoint2) {
      controller.animateTo(1100,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      print('condition arques');

      differenceHeureArques();
    } else if (_current_Location!.latitude! < latitudequarantepoint1 &&
        _current_Location!.latitude! > latitudequarantepoint2 &&
        _current_Location!.longitude! < longitudequarantepoint1 &&
        _current_Location!.longitude! > longitudequarantepoint2) {
      controller.animateTo(600,
          duration: Duration(seconds: 1), curve: Curves.easeIn);

      print('condition 40');
    } else if (_current_Location!.latitude! < latitudeBlendecquepoint1 &&
        _current_Location!.latitude! > latitudeBlendecquepoint2 &&
        _current_Location!.longitude! < longitudeBlendecquespoint1 &&
        _current_Location!.longitude! > longitudeBlendecquespoint2) {
      controller.animateTo(530,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      differenceHeureBlendecques();

      print('condition Blendecques');
    } else if (_current_Location!.latitude! < latidudeCoupolepoint1 &&
        _current_Location!.longitude! < longitudeCoupolepoint1 &&
        _current_Location!.longitude! > longitudeCoupolepoint2) {
      controller.animateTo(470,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      differenceHeureLaCoupole();
      print('condition Coupole');
    } else if (_current_Location!.latitude! < latitudeTrenteWizernepoint1 &&
        _current_Location!.latitude! > latidudeTrenteWizernepoint2 &&
        _current_Location!.longitude! < longitudeTrenteWizernepoint1 &&
        _current_Location!.longitude! > longitudeTrenteWizernepoint2) {
      controller.animateTo(400,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      print(_current_Location!);
      print('condition 30 wizerne');
    } else if (_current_Location!.latitude! < latitudeQuaranteWizernepoint1 &&
        _current_Location!.longitude! < longitudequaranteWizernepoint1 &&
        _current_Location!.longitude! > longitudequaranteWizernepoint2) {
      controller.animateTo(420,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      print('condition 40 wizerne');
      controller.animateTo(330,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
    } else if (_current_Location!.latitude! < latitudeHallinepoint1 &&
        _current_Location!.latitude! > latitudeHallinepoint2 &&
        _current_Location!.longitude! < longitudeHallinepoint1 &&
        _current_Location!.longitude! > longitudeHallinepoint2) {
      controller.animateTo(290,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      print('conditions hallines');
      differenceHeureHallines();
    } else if (_current_Location!.latitude! > latitudeEsquerdepoint1 &&
        _current_Location!.latitude! < latitudeEsquerdepoint2 &&
        _current_Location!.longitude! < longitudeEsquerdepoint1 &&
        _current_Location!.longitude! > longitudeEsquerdepoint2) {
      controller.animateTo(210,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      print('condition Esquerde');
      differenceHeureEsquerdes();
    } else if (_current_Location!.latitude! < latitudeSetquespoint1 &&
        _current_Location!.latitude! > latitudeSetquespoint2 &&
        _current_Location!.longitude! < longitudeSetquespoint1 &&
        _current_Location!.longitude! > longitudeSetquespoint2) {
      controller.animateTo(150,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      print('condition Setques');
      differenceHeureSetques();
    } else if (_current_Location!.latitude! < latitude_trente_Lumbres_point1 &&
        _current_Location!.latitude! > latitude_trente_Lumbres_point2 &&
        _current_Location!.longitude! < longitude_trente_Lumbres_point1 &&
        _current_Location!.longitude! > longitude_trente_Lumbres_point2) {
      controller.animateTo(80,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      print('condition 30 Lumbres');
    } else if (_current_Location!.latitude! < latitudeLumbrespoint1 &&
        _current_Location!.longitude! < longitudeLumbrespoint2) {
      controller.animateTo(0,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
      print('condition lumbres');
      differenceHeureLumbres();
    }
  }
}
