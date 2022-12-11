import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class brightness extends StatefulWidget {
  const brightness({Key? key}) : super(key: key);

  @override
  _brightnessState createState() => _brightnessState();
}

class _brightnessState extends State<brightness> {
  double value =10;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38)
      ),
      child:Row(
        children: [
          Icon(Icons.brightness_high),
          Slider.adaptive(value: value, onChanged: (newvalue){
            setState(() {
            value= newvalue;
            });
          },
            min: 0,
            max: 20,
            divisions: 5,
            inactiveColor: Colors.white,
            activeColor: Colors.blueAccent,
          ),
          Icon(Icons.brightness_low),
        ],
      )
    );
  }
}
