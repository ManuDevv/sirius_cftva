import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



 openDialog(BuildContext context){


  return  showDialog(
      context: context,
      builder: (BuildContext context)=> SimpleDialog(

          title: const Text('Details train',style:
            TextStyle(decoration: TextDecoration.underline),),
        children: [
          Container(

            decoration: const BoxDecoration(
              color:Colors.white24
            ),
            child: Column(
              children: [
                Text('Train 671 du ${DateFormat('dd/MM/yyyy').format(DateTime.now())}'),
                const SizedBox(
                  height: 20,
                ),
                const Text(('ARQ BV 14:00 > LUM BV 15:14')),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.pink.shade100
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: RichText(
                          text: TextSpan(
                            text: ' ind/code compo: ',
                            style: DefaultTextStyle.of(context).style,
                            children: const <TextSpan>[
                              TextSpan(text: 'AUTOM', style: TextStyle(fontWeight: FontWeight.bold)),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'EM de Tracé: ',
                            style: DefaultTextStyle.of(context).style,
                            children: const <TextSpan>[
                              TextSpan(text: 'X 3800', style: TextStyle(fontWeight: FontWeight.bold)),

                            ],
                          ),
                        ),
                      )
                    ],
                    
                  ),
                )

              ],
            ),
          )
        ],
        )

  );
}




