import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';


class horloge extends StatefulWidget {
  const horloge({Key? key}) : super(key: key);

  @override
  _horlogeState createState() => _horlogeState();
}

class _horlogeState extends State<horloge> {
  @override
  Widget build(BuildContext context) {
    return DigitalClock(
      is24HourTimeFormat: true,
      areaDecoration: BoxDecoration(
        color: Colors.amber.shade400
      ),
      areaAligment: AlignmentDirectional.topStart,

      minuteDigitDecoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),


      ),
      secondDigitDecoration: BoxDecoration(

        border: Border.all(color: Colors.transparent),

      ),
      digitAnimationStyle: Curves.elasticInOut,
    );
  }
}
