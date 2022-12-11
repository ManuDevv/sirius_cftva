import 'package:flutter/material.dart';

class ligneTrenteKm_h extends StatelessWidget {
  const ligneTrenteKm_h({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '30',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          width: 80,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade500),
          child: const Text(
            '',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 10),
            decoration:
            BoxDecoration(color: Colors.grey.shade200),
            child: const Text(
              '',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Container(
          width: 110,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration:
          BoxDecoration(color: Colors.grey.shade300),
          child: const Text(
            '',
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}
