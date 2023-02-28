import 'package:flutter/material.dart';
import 'package:sirius_cftva/view/sens_impair.dart';
import 'package:sirius_cftva/main.dart';

class ligneArques extends StatelessWidget {
  const ligneArques({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '30',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          width: 80,
          height: 60,
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          decoration: BoxDecoration(color: Colors.grey.shade500),
          child: const Text(
            '67',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(color: Colors.lightBlueAccent.shade200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Arques',
                  style: TextStyle(fontSize: 30),
                ),
                Expanded(
                    child: Image.asset(
                  'asset/damiernb.png',
                  scale: 3.5,
                ))
              ],
            ),
          ),
        ),
        Container(
          width: 110,
          height: 60,
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: Text(
          
            
            "15h15"
            , style: TextStyle(fontSize: 30))
          ),
        
      ],
    );
  }
}

class ligneArquesPair extends StatelessWidget {
  const ligneArquesPair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '30',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          width: 80,
          height: 60,
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          decoration: BoxDecoration(color: Colors.grey.shade500),
          child: const Text(
            '67',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(color: Colors.lightBlueAccent.shade200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Arques',
                  style: TextStyle(fontSize: 30),
                ),
                Expanded(
                    child: Image.asset(
                  'asset/damiernb.png',
                  scale: 3.5,
                ))
              ],
            ),
          ),
        ),
        Container(
          width: 110,
          height: 60,
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: Text(
          
            
            "17h23"
            , style: TextStyle(fontSize: 30))
          ),
        
      ],
    );
  }
}
