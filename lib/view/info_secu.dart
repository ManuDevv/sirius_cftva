import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class infosecu extends StatelessWidget {
  infosecu({Key? key}) : super(key: key);
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Info Sécurité'),
          centerTitle: true,
        ),
        body: Center(child: SingleChildScrollView(child: recupInfoSecurite())),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      Text('Ajouter un info sécurité'),
                      TextField(
                        controller: textController,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          addInfoSecu();
                          Navigator.pop(context);
                        },
                        child: Text('Ajouter'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.deepPurpleAccent),
                        ),
                      )
                    ],
                  );
                },
              );
            },
            child: Icon(Icons.add)));
  }

  void addInfoSecu() {
    try {
      var now = DateTime.now();
      var hourAndMinute = DateFormat('dd/MM/yyyy à HH:mm');
      final referenceBDD = FirebaseFirestore.instance;
      referenceBDD.collection('infosecu').add({
        'message': textController.text,
        'heure': hourAndMinute.format(now)
      }).then((value) {
        print(value.id);
        textController.clear();
        //Navigator.pop(context);}
      });
    } catch (erreur) {
      print(erreur);
    }
  }
}

class recupInfoSecurite extends StatelessWidget {
  recupInfoSecurite({Key? key}) : super(key: key);
  final databaseReference = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: databaseReference.collection('infosecu').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) return const Text('Loading...');
        return Container(
          child: Column(
              children: snapshot.data!.docs.map((document)


              {
            return Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Evenement edité le: ' + document['heure'],
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(color: Colors.grey.shade500),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          document['message'],
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList()),
        );
      },
    );
  }
}
