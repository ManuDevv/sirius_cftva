import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sirius_cftva/view/main_sirius.dart';

//import 'package:sirius_cftva/view/numero_train.dart';
//import 'package:sirius_cftva/view/main_sirius.dart';

class choixTrain extends StatefulWidget {
  choixTrain({Key? key}) : super(key: key);

  @override
  State<choixTrain> createState() => _choixTrainState();
}

class _choixTrainState extends State<choixTrain> {
  final itemsJours = [
    'Lundi',
    'Mardi',
    'Mercredi',
    'Jeudi',
    'Vendredi',
    'Samedi',
    'Dimanche'
  ];
  final itemsMateriel = ['X3800', 'X4700', 'BB63852', 'TY2'];
  final itemsSens = ['1', '2'];

  String? selectedItemJours = 'Lundi';
  String? selectedItemMateriel = 'X3800';
  String? selectedItemSens = '1';

  int valeurJour = 0;
  int valeurMateriel = 0;
  int valeurSens = 0;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent,
      elevation: 0,
        title: Text('Choisir son train'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              // ignore: prefer_const_constructors
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                  colors:const <Color>[
                    Color(0xff0f7296),
                    Color(0xff0f7296),
                    Color(0xffa68f49)
                     ]
                     )
                     ),
          width: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 100, 20, 10),
                child: const Text(
                  "Afin d'identifier la marche de votre train, veuillez rensseigner les champs ci-dessous",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                child: DropdownButtonFormField<String>(
                  iconEnabledColor: Colors.white,
                  dropdownColor: Color.fromARGB(255, 50, 172, 228),
                  decoration: InputDecoration(
                      label: Text(
                        'Jour de la semaine',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 3, color: Colors.white)),
                              
                              ),
                  items: itemsJours.map((String singleItem) {
                    return DropdownMenuItem<String>(
                      value: singleItem,
                      child: Text(
                        singleItem,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    );
                  }).toList(),
                  onChanged: (itemchoisi) {
                    setState(() {
                      selectedItemJours = itemchoisi;
                    });
                  },
                  value: selectedItemJours,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DropdownButtonFormField<String>(
                  iconEnabledColor: Colors.white,
                  dropdownColor: Colors.deepPurpleAccent,
                  decoration: InputDecoration(
                      label: Text(
                        'Materiel',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 3, color: Colors.white))),
                  items: itemsMateriel.map((String singleItem) {
                    return DropdownMenuItem<String>(
                        value: singleItem,
                        child: Text(
                          singleItem,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ));
                  }).toList(),
                  onChanged: (itemchoisi) {
                    setState(() {
                      selectedItemMateriel = itemchoisi;
                    });
                  },
                  value: selectedItemMateriel,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: DropdownButtonFormField<String>(
                  dropdownColor: Colors.deepPurpleAccent,
                  iconEnabledColor: Colors.white,
                  decoration: InputDecoration(
                      label: const Text(
                        'sens Pair/Impair',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 3, color: Colors.white))),
                  items: itemsSens.map((String singleItem) {
                    return DropdownMenuItem<String>(
                        value: singleItem,
                        child: Text(
                          singleItem,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ));
                  }).toList(),
                  onChanged: (itemchoisi) {
                    setState(() {
                      selectedItemSens = itemchoisi;
                    });
                  },
                  value: selectedItemSens,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      elevation: 50,
                      minimumSize: Size(200, 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                  onPressed: () {
                    FonctionvaleurJour();
                    FonctionvaleurMateriel();
                    FonctionvaleurSens();
                    numero_marche();
                    alerte(context);
                  },
                  child: const Text(
                    'Valider',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  )),
              numero_marche()
            ],
          ),
        ),
      ),
    );
  }

  void FonctionvaleurJour() {
    if (selectedItemJours == 'Lundi') {
      valeurJour = 1;
    } else if (selectedItemJours == 'Mardi') {
      valeurJour = 2;
    } else if (selectedItemJours == 'Mercredi') {
      valeurJour = 3;
    } else if (selectedItemJours == 'Jeudi') {
      valeurJour = 4;
    } else if (selectedItemJours == 'Vendredi') {
      valeurJour = 5;
    } else if (selectedItemJours == 'Samedi') {
      valeurJour = 6;
    } else if (selectedItemJours == 'Dimanche') {
      valeurJour = 7;
    }
  }

  void FonctionvaleurMateriel() {
    if (selectedItemMateriel == 'X3800') {
      valeurMateriel = 8;
    } else if (selectedItemMateriel == 'X4700') {
      valeurMateriel = 7;
    } else if (selectedItemMateriel == 'BB63852') {
      valeurMateriel = 3;
    } else if (selectedItemMateriel == 'TY2') {
      valeurMateriel = 2;
    }
  }

  void FonctionvaleurSens() {
    if (selectedItemSens == '1') {
      valeurSens = 1;
    } else if (selectedItemSens == '2') {
      valeurSens = 2;
    }
  }

  numero_marche() {
    setState(() {
      valeurJour;
      valeurMateriel;
      valeurSens;
    });
    return Text(('Votre train est :$valeurJour$valeurMateriel$valeurSens'),
        style: TextStyle(color: Colors.white60, fontWeight: FontWeight.w700));
  }

  Future alerte(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 20,
            title: const Text(
              'Valider ?',
              style: TextStyle(fontWeight: FontWeight.bold),
            
            ),
            content: Text(
                ('Votre numéro de marche  est :$valeurJour$valeurMateriel$valeurSens')),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mainSirius(
                                valeurJour: valeurJour,
                                valeurMateriel: valeurMateriel,
                                valeurSens: valeurSens)));
                  },
                  child: Text('Valider')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Annuler'))
            ],
          );
        });
  }
}
