import 'package:flutter/material.dart';


class ligneBlendecques extends StatelessWidget {
  const ligneBlendecques({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
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
            '69.7',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            decoration:
            BoxDecoration(color: Colors.grey.shade200),
            child: const Text(
              'Blendecques',
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
            '15h24',
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}
class ligneBlendecquesPair extends StatelessWidget {
  const ligneBlendecquesPair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
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
            '69.7',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            decoration:
            BoxDecoration(color: Colors.grey.shade200),
            child: const Text(
              'Blendecques',
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
            '17h01',
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}