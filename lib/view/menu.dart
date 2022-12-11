import 'package:flutter/material.dart';
import 'package:sirius_cftva/services/deconexion.dart';
import 'package:sirius_cftva/services/planning_firebase_storage.dart';
import 'package:sirius_cftva/theme/color_theme.dart';
import 'package:sirius_cftva/view/choix_train.dart';
import 'package:sirius_cftva/view/menu_chapitre_referentiel.dart';
import 'package:firebase_auth/firebase_auth.dart';


FirebaseAuth auth =FirebaseAuth.instance;

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var hauteur_card= MediaQuery.of(context).size.height/9;
    var largeur_card =MediaQuery.of(context).size.width/3;
    return Scaffold(
      appBar: AppBar(
        title: Text('MENU'),
        centerTitle: true,
        actions: [
          ElevatedButton(onPressed: (){
            deconexion(context);
          }, child: Icon(Icons.logout))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
         color: Colors.black87
          ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
            Container(

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.yellow.shade800,
                    Colors.red
                  ],
                  begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                ),
                borderRadius: BorderRadius.circular(30),

              ),

              child: ElevatedButton(

        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent,),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          minimumSize: MaterialStateProperty.all(Size(largeur_card, hauteur_card))
      ),
        onPressed: (){
     //     Navigator.push(context, MaterialPageRoute(builder: (context)=>planning()));
        },
        child: const Text('PLANNING',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),)),

            ),
              Container(
                decoration: BoxDecoration(
                    gradient:const  LinearGradient(
                        colors: [
                          Colors.lightGreenAccent,
                          Colors.lightBlue
                        ]
                    ),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: ElevatedButton(

                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent,),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                        minimumSize: MaterialStateProperty.all(Size(largeur_card, hauteur_card))
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>choixTrain()));
                    },
                    child: const Text('SIRIUS CFTVA',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),)),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff52E5E7),
                          Color(0xff130CB7)
                        ]
                    ),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: ElevatedButton(

                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent,),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                        minimumSize: MaterialStateProperty.all(Size(largeur_card, hauteur_card))
                    ),
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>choix_chapitre()));
                    },
                    child: const Text('REFERENTIEL CONDUITE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),)),
              ),



            ],
          ),
        ),
      ),
    );
  }

}
