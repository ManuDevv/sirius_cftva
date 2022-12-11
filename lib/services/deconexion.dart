import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sirius_cftva/main.dart';
import 'package:sirius_cftva/main.dart';

FirebaseAuth auth =FirebaseAuth.instance;

deconexion(BuildContext context){
  return showDialog(
      context: context,
      builder: (BuildContext)=>SimpleDialog(
        title: Text('Deconexion'),
        children: [
          Column(
            children: [
              Text('Voulez vous vous vous deconecter ?'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red
                    ),
                      onPressed: (){
                        Navigator.pop(context);
                      }, child: Text('Non')),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green
                    ),
                      onPressed: (){
                        auth.signOut();
                      }, child: Text('Oui'))
                ],
              )
            ],
          )
        ],
      ));
}