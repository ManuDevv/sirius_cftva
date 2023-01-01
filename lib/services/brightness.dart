import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screen_wake/flutter_screen_wake.dart';

class brightness extends StatefulWidget {
  const brightness({Key? key}) : super(key: key);

  @override
  _brightnessState createState() => _brightnessState();
}

class _brightnessState extends State<brightness> {
   double _brightness=1.0;

  @override
  void initState() {
    initPlatformBrightness();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black38)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.dark_mode),
            Slider.adaptive(
              value: _brightness,
              onChanged: (newvalue) {
                setState(() {
                  _brightness = newvalue;
                });
                FlutterScreenWake.setBrightness(_brightness);
                print(newvalue);
              },
              min: 0,
              max: 20,
              divisions: 2,
              inactiveColor: Colors.white,
              activeColor: Colors.blueAccent,
            ),
            Icon(Icons.light_mode),
          ],
        ));
  }

  Future<void> initPlatformBrightness() async {
    double brightness;

    try {
      brightness = await FlutterScreenWake.brightness;
    } on PlatformException {
      brightness = 20.0;
    }

    setState(() {
      _brightness = brightness;
    });
  }
}
