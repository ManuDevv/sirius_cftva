import 'package:flutter/material.dart';

class ligneEsquerdes extends StatelessWidget {
  const ligneEsquerdes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          width: 80,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade500),
          child: const Text(
            '76.6',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            decoration:
            BoxDecoration(color: Colors.grey.shade200),
            child: const Text(
              'Esquerdes',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Container(
          width: 110,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '15h55',
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}

class ligneEsquerdesPair extends StatelessWidget {
  const ligneEsquerdesPair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          width: 80,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade500),
          child: const Text(
            '76.6',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            decoration:
            BoxDecoration(color: Colors.grey.shade200),
            child: const Text(
              'Esquerdes',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Container(
          width: 110,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '16h44',
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}