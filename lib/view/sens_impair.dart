import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:sirius_cftva/services/batterie.dart';
import 'package:sirius_cftva/services/horloge.dart';
import 'package:sirius_cftva/services/difference_heure_sens_impair.dart';
import 'package:sirius_cftva/services/brightness.dart';
import 'package:sirius_cftva/services/localisation.dart';
import 'package:sirius_cftva/services/planning_firebase_storage.dart';
import 'package:sirius_cftva/view/bulletin_service.dart';

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
import 'main_sirius.dart';

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
                        ligneVides(),
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
                      margin: const EdgeInsets.only(
                        left: 2,
                        bottom: 20,
                      ),
                      height: 60,
                      width: 900,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 5)),
                    )),

                Positioned(
                    bottom: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(30, 10, 20, 5),
                          child: Text("VL"),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(30, 10, 20, 5),
                          child: Text('PK'),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(50, 10, 20, 5),
                          child: Text("Etablissement"),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(90, 10, 20, 5),
                          child: Text("Horraires"),
                        )
                      ],
                    ))
              ],
            ),
          ),
          Container(
            width: 300,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: ListView(
              children: [
                const brightness(),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Détail train'),
                      IconButton(
                          onPressed: () {
                            openDialog(context);
                          },
                          icon: const Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('RT/Consigne de ligne'),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const renseignementsTechnique()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const planning())),
                  child: Container(
                    decoration: const BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Planning'),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios_outlined))
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex) => infosecu()));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Info Sécu'),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios_outlined))
                      ],
                    ),
                  ),
                ),
                Container(
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: const Border(
                            bottom: BorderSide(color: Colors.black))),
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
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: const BoxDecoration(),
                              child: Text(
                                diff != null
                                    ? "Retard: $diff min"
                                    : "Retard:  min",
                                style: const TextStyle(
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
                          onPressed: () {
                            alerte_bulletin_service(context);
                          },
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
      print('la loc est :${_current_Location}');
    });
  }

  void stopTimer() async {}

  void scrollUp() async {
    late LocationData current_Location;

    //test sur portable boulot
    // double latitudeArquespoint1   = 50.970;
    // double latitudeArquespoint2   = 50.960;
    // double longitudeArquespoint1 = 2.450;
    // double longitudeArquespoint2 = 2.400;

    //coordonées ci dessous bonnes

    double latitudeArquespoint1 = 50.729155;
    double latitudeArquespoint2 = 50.7271;
    double longitudeArquespoint1 = 2.302659;
    double longitudeArquespoint2 = 2.301656;

    double latitudequarantepoint1 = 50.72263;
    double longitudequarantepoint1 = 2.29821;

    // pn 64
    double latitudequarantepoint2 = 50.71882;
    double longitudequarantepoint2 = 2.29255;

    //pont 

    double latitudeBlendecquepoint1 = 50.71495;
    double longitudeBlendecquespoint1 = 2.28203;

    // pn 67
    double latitudeBlendecquepoint2 = 50.71166;
    double longitudeBlendecquespoint2 = 2.26691;

    // pn 69
    double latidudeCoupolepoint1 = 50.70691;
    double longitudeCoupolepoint1 = 2.24654;

    double latidudeCoupolepoint2 = 50.70672;
    double longitudeCoupolepoint2 = 2.23680;

    double latitudeTrenteWizernepoint1 = 50.70672;
    double longitudeTrenteWizernepoint1 = 2.23680;

    double latidudeTrenteWizernepoint2 = 50.70640;
    double longitudeTrenteWizernepoint2 = 2.23353;

    double latitudeQuaranteWizernepoint1 = 50.70640;
    double longitudequaranteWizernepoint1 = 2.23353;


    double latidudequaranteWizernzepoint2 = 50.70519;
    double longitudequaranteWizernepoint2 = 2.22837;

    double latitudeHallinepoint1 = 50.70448;
    double longitudeHallinepoint1 = 2.22118;
    double latitudeHallinepoint2 = 50.70362;
    double longitudeHallinepoint2 = 2.20856;

    double latitudeEsquerdepoint1 = 50.70270;
    double latitudeEsquerdepoint2 = 50.70526;
    double longitudeEsquerdepoint1 = 2.18878;
    double longitudeEsquerdepoint2 = 2.17663;

    double latitudeSetquespoint1 = 50.70859;
    double longitudeSetquespoint1 = 2.15845;
    double latitudeSetquespoint2 = 50.70614;
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
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
      print('condition arques');

      differenceHeureArques();

      //40
    } else if (_current_Location!.latitude! < latitudequarantepoint1 &&
        _current_Location!.latitude! > latitudequarantepoint2 &&
        _current_Location!.longitude! < longitudequarantepoint1 &&
        _current_Location!.longitude! > longitudequarantepoint2) {
      controller.animateTo(820,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);

      print('condition 40');
    } else if (_current_Location!.latitude! < latitudeBlendecquepoint1 &&
        _current_Location!.longitude! < longitudeBlendecquespoint1 &&
        _current_Location!.latitude! > latitudeBlendecquepoint2 &&
        _current_Location!.longitude! > longitudeBlendecquespoint2) {
      controller.animateTo(750,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
      differenceHeureBlendecques();

      print('condition Blendecques');


    } else if (_current_Location!.latitude! < latidudeCoupolepoint1 &&
        _current_Location!.longitude! < longitudeCoupolepoint1 &&
        _current_Location!.longitude! > longitudeCoupolepoint2) {
      controller.animateTo(680,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
      differenceHeureLaCoupole();
      print('condition Coupole');


      
    } else if (_current_Location!.latitude! < latitudeTrenteWizernepoint1 &&
        _current_Location!.latitude! > latidudeTrenteWizernepoint2 &&
        _current_Location!.longitude! < longitudeTrenteWizernepoint1 &&
        _current_Location!.longitude! > longitudeTrenteWizernepoint2) {
      controller.animateTo(600,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
      print(_current_Location!);
      print('condition 30 wizerne');
    } else if (_current_Location!.latitude! < latitudeQuaranteWizernepoint1 &&
        _current_Location!.longitude! < longitudequaranteWizernepoint1 &&
        _current_Location!.longitude! > longitudequaranteWizernepoint2) {
      controller.animateTo(550,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
      print('condition 40 wizerne');
    } else if (_current_Location!.latitude! < latitudeHallinepoint1 &&
        _current_Location!.latitude! > latitudeHallinepoint2 &&
        _current_Location!.longitude! < longitudeHallinepoint1 &&
        _current_Location!.longitude! > longitudeHallinepoint2) {
      controller.animateTo(470,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
      print('conditions hallines');
      print(_current_Location);
      differenceHeureHallines();
    } else if (_current_Location!.latitude! < latitudeEsquerdepoint1 &&
        _current_Location!.latitude! > latitudeEsquerdepoint2 &&
        _current_Location!.longitude! < longitudeEsquerdepoint1 &&
        _current_Location!.longitude! > longitudeEsquerdepoint2) {
      controller.animateTo(400,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
      print('condition Esquerde');
      differenceHeureEsquerdes();
    } else if (_current_Location!.latitude! < latitudeSetquespoint1 &&
        _current_Location!.latitude! >latitudeSetquespoint2 &&
        _current_Location!.longitude! < longitudeSetquespoint1 &&
        _current_Location!.longitude! > longitudeSetquespoint2) {
      controller.animateTo(330,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
      print('condition Setques');
      differenceHeureSetques();

      // condition 30
    } else if (_current_Location!.latitude! < latitude_trente_Lumbres_point1 &&
        _current_Location!.latitude! > latitude_trente_Lumbres_point2 &&
        _current_Location!.longitude! < longitude_trente_Lumbres_point1 &&
        _current_Location!.longitude! > longitude_trente_Lumbres_point2) {
      controller.animateTo(250,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
      print('condition 30 Lumbres');

      // condition lumbre
    } else if (_current_Location!.latitude! < latitudeLumbrespoint1 &&
        _current_Location!.longitude! < longitudeLumbrespoint2) {
      controller.animateTo(180,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
      print('condition lumbres');
      differenceHeureLumbres();
    }
  }

  alerte_bulletin_service(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color(0xff0f7296),
            title: const Text("Editer une bulletin de service"),
            content: Container(
              child: Column(
                children: [
                  const Text("Journée de service terminée ?"),
                  const Text("Edité un Bulletin de service ?")
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bulletinService()));
                      },
                      child: const Text('Valider')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Annuler'))
                ],
              )
            ],
          );
        });
  }
}
