import 'package:flutter/material.dart';


class numeroTrain extends StatefulWidget {
  int valeurJour = 0;
  int valeurMateriel = 0;
  int valeurSens = 0;
  numeroTrain({Key? key,
  required this.valeurJour,
    required this.valeurMateriel,
    required this.valeurSens
  }) : super(key: key);

  @override
  State<numeroTrain> createState() => _numeroTrainState();
}

class _numeroTrainState extends State<numeroTrain> {
  @override
  Widget build(BuildContext context) {
    return
    

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                padding: EdgeInsets.only(left: 5),
                  child:  Text('train N° ${widget.valeurJour}${widget.valeurMateriel}${widget.valeurSens}',style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: const BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.white60), right: BorderSide(color: Colors.white60))
                  ),
                  child: const  Text('US X 3800',style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.w700
                  ),),

                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.settings,
                  color: Colors.white60,
                ))
              ],


      );


  }
}
