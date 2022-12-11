import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sirius_cftva/view/sens_impair.dart';
import 'sens_impair.dart';
import 'sens_pair.dart';

class test_parametre extends StatefulWidget {
  int valeurJour = 0;
  int valeurMateriel = 0;
  int valeurSens = 0;
  test_parametre(
      {Key? key,
      required this.valeurJour,
      required this.valeurMateriel,
      required this.valeurSens})
      : super(key: key);

  @override
  _test_parametreState createState() => _test_parametreState();
}

class _test_parametreState extends State<test_parametre> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                  'train N° ${widget.valeurJour}${widget.valeurMateriel}${widget.valeurSens}'),
              matos()
            ],
          ),
        ),
        body: choixsens());
  }

  matos() {
    if (widget.valeurMateriel == 8) {
      return Text('Composition: X3800');
    } else if (widget.valeurMateriel == 7) {
      return Text('Composition : X4700');
    } else if (widget.valeurMateriel == 3) {
      return Text('Composition : BB63852');
    } else if (widget.valeurMateriel == 2) {
      return Text('Composition : TY2');
    }
  }

  choixsens() {
    if (widget.valeurSens == 1) {
      return colonne1();
    } else {
      return colonne2();
    }
  }
}
