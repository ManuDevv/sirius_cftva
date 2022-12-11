import 'package:flutter/material.dart';
import 'package:sirius_cftva/services/horloge.dart';
import 'package:sirius_cftva/services/localisation.dart';
import 'package:sirius_cftva/services/batterie.dart';
import 'package:sirius_cftva/view/sens_impair.dart';



class colonne2 extends StatefulWidget {
  const colonne2({Key? key}) : super(key: key);

  @override
  _colonne2State createState() => _colonne2State();
}

class _colonne2State extends State<colonne2> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 300,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
      decoration:
      BoxDecoration(border: Border.all(color: Colors.black)),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: Colors.black))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Détail train'),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: Colors.black))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('RT/ Livret de ligne'),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: Colors.black))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Travaux'),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: Colors.black))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Info Sécu'),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black))),
              child: Row(
                children: [horloge(), batterie()],
              )),
          Container(
            child: testLocation(),
          )

        ],
      ),
    );
  }
}
