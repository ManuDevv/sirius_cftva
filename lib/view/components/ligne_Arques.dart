import 'package:flutter/material.dart';


class ligneArques extends StatelessWidget {
  const ligneArques({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '30',
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
            '67',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            padding: const EdgeInsets.only(left: 10),
            decoration:
            BoxDecoration(color: Colors.lightBlueAccent.shade200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Arques',
                  style: TextStyle(fontSize: 30),
                ),
                Expanded(child: Image.asset('asset/damiernb.png',
                  scale: 3.5,))
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
            '14H00',
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}
