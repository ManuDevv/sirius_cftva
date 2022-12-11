import 'package:flutter/material.dart';

class ligneLumbres extends StatelessWidget {
  const ligneLumbres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '  ',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          width: 80,
          height: 60,
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade500),
          child: const Text(
            '81.2',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            padding: const EdgeInsets.only(left: 10),
            decoration:
            BoxDecoration(color: Colors.lightBlueAccent.shade400),
            child: Row(
              children:  [
                Text(
                  'Lumbres',
                  style: TextStyle(fontSize: 30),
                ),
                 Expanded(
                   child: Center(
                     child: Image.asset('asset/damiernb.png',
                      scale: 3.5,),
                   ),
                 )

              ],
            ),
          ),
        ),
        Container(
          width: 110,
          height: 60,
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '15H30',
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}

