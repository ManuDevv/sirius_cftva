import 'dart:async';

import 'package:flutter/material.dart';

import 'package:location/location.dart';

class testLocation extends StatefulWidget {
  const testLocation({Key? key}) : super(key: key);

  @override
  _testLocationState createState() => _testLocationState();
}

class _testLocationState extends State<testLocation> {
  Location location = new Location();
  late LocationData currentLocation;

  @override
  Future getLocation() async {
    location = new Location();
    location.onLocationChanged.listen((LocationData cloc) {
      currentLocation = cloc;
    });
    setState(() {
      currentLocation;
    });
    print('${currentLocation.longitude}-${currentLocation.latitude}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.blue,
      child: Column(
        children: [


          // longitude avec le nombre de décimale après la virgule
          Text(
            '${currentLocation}',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
