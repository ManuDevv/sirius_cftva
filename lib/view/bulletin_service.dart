import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sirius_cftva/style/colors.dart';

class bulletinService extends StatefulWidget {
  bulletinService({Key? key}) : super(key: key);

  @override
  State<bulletinService> createState() => _bulletinServiceState();
}

class _bulletinServiceState extends State<bulletinService> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xff0f7296),
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Bulletin de service CFTVA"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(10, 70, 10, 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
     child: Column(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                 Column(
                  children: [
                     Container(width: 200,
               padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: whitecolor),
               child: TextFormField(
                decoration: const InputDecoration(
                    label: Text('Nom')
                ),
               ),
               ),
               const SizedBox(
                height: 10,
               ),
                 Container(width: 200,
               padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: whitecolor),
               child: TextFormField(
                decoration: const InputDecoration(
                    label: Text('Prénom')
                ),
               ),
               )
                  ],
                 ),
                 const SizedBox(
                  width: 20,
                 ),
                 Container(
                  child: Column(
                    children: [
                      Text("Dépot",style: TextStyle(
                        color: whitecolor,
                        fontWeight: FontWeight.bold
                      ),),
                     
                          Container(width: 200,
               padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: whitecolor),
               child: TextFormField(
                decoration: const InputDecoration(
                    label: Text('Prénom')
                ),
               ),
               )

                    ],
                  ),
                 )
                ],
              ),
             DataTable(
              columns:
               [ DataColumn(label: Text('Train n°',style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text('Lieu de départ',style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text('Heure de départ',style: TextStyle(
                color: whitecolor
               ),)),
                DataColumn(label: Text("Lieu d'arrivée",style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text("Heure d'arrivée",style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text('Observations',style: TextStyle(
                color: whitecolor
               ),))
              
              
               ],
               // ignore: prefer_const_literals_to_create_immutables
               rows:[DataRow(cells:[
                DataCell(
                  //heure
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                 DataCell(
                  // lieu de départ
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                 DataCell(
                  //heure de départ
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                DataCell(
                  //Lieu d'arrivée
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                DataCell(
                  //heure de d'arrivée
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                DataCell(
                  //observation
                  Container(
                    width: 180,
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                ))
               ])]),
                DataTable(
              columns:
               [ DataColumn(label: Text('Train n°',style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text('Lieu de départ',style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text('Heure de départ',style: TextStyle(
                color: whitecolor
               ),)),
                DataColumn(label: Text("Lieu d'arrivée",style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text("Heure d'arrivée",style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text('Observations',style: TextStyle(
                color: whitecolor
               ),))
              
              
               ],
               // ignore: prefer_const_literals_to_create_immutables
               rows:[DataRow(cells:[
                DataCell(
                  //heure
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                 DataCell(
                  // lieu de départ
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                 DataCell(
                  //heure de départ
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                DataCell(
                  //Lieu d'arrivée
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                DataCell(
                  //heure de d'arrivée
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                DataCell(
                  //observation
                  Container(
                    width: 180,
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                ))
               ])]),
                DataTable(
              columns:
               [ DataColumn(label: Text('Train n°',style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text('Lieu de départ',style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text('Heure de départ',style: TextStyle(
                color: whitecolor
               ),)),
                DataColumn(label: Text("Lieu d'arrivée",style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text("Heure d'arrivée",style: TextStyle(
                color: whitecolor
               ),)),
               DataColumn(label: Text('Observations',style: TextStyle(
                color: whitecolor
               ),))
              
              
               ],
               // ignore: prefer_const_literals_to_create_immutables
               rows:[DataRow(cells:[
                DataCell(
                  //heure
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                 DataCell(
                  // lieu de départ
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                 DataCell(
                  //heure de départ
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                DataCell(
                  //Lieu d'arrivée
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                DataCell(
                  //heure de d'arrivée
                  Container(
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                )),
                DataCell(
                  //observation
                  Container(
                    width: 180,
                  decoration: BoxDecoration(
                    color: whitecolor
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: whitecolor
                    ),
                  ),
                ))
               ])])
            
               
                ],
              ),
            
          ),
      ]
        )
    
     ),
      );
  
  }
}
