import 'package:flutter/material.dart';
import 'package:sirius_cftva/services/difference_heure.dart';
import '../services/batterie.dart';
import '../services/horloge.dart';
import 'components/ligne_30km_h.dart';
import 'components/ligne_40km_h.dart';
import 'components/ligne_Arques.dart';
import 'components/ligne_Blendecques.dart';
import 'components/ligne_Esquerdes.dart';
import 'components/ligne_Hallines.dart';
import 'components/ligne_La_coupole.dart';
import 'components/ligne_Lumbres.dart';
import 'components/ligne_Setques.dart';
import 'components/ligne_vide.dart';
import 'package:flutter/services.dart';


class test_scroll_3d extends StatefulWidget {
  test_scroll_3d({Key? key}) : super(key: key);

  @override
  State<test_scroll_3d> createState() => _test_scroll_3dState();
}

class _test_scroll_3dState extends State<test_scroll_3d> {
    final controller =
      ScrollController(initialScrollOffset: 300, keepScrollOffset: true);
       bool click = true;

        @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListWheelScrollView(
        itemExtent: 1,
        perspective: 0.009,
        children: [ Container(
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
                        decoration:
                            BoxDecoration(border: Border.all(color: Colors.black)),
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
                 //   brightness(),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Détail train'),
                          IconButton(
                              onPressed: () {
                             //   openDialog(context);
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
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (contex) => infosecu()));
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
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [horloge(), batterie()],
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                // Container(
                                //   decoration: BoxDecoration(),
                                //   child: Text(diff !=null?
                                //     'Retard: $diff min':
                                //     'Retard:       min',
                                //     style: const TextStyle(
                                //         fontSize: 30,
                                //         color: Colors.blue,
                                //         fontWeight: FontWeight.bold),
                                //   ),
                                // ),
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
                              //  timer();
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
        ),
        ]
      ),
    );
  }
}