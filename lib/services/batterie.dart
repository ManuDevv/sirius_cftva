import 'package:flutter/material.dart';
import 'package:battery/battery.dart';

class batterie extends StatefulWidget {
  const batterie({Key? key}) : super(key: key);

  @override
  _batterieState createState() => _batterieState();
}

class _batterieState extends State<batterie> {

  var _batterie=Battery();
  int pourcentage = 10;

  @override
  void initState(){
    super.initState();
        getLevelBatterie();
  }

  void getLevelBatterie ()async {
    final level = await _batterie.batteryLevel;


  setState(() {
    pourcentage= level;
  });
  }
  static const IconData battery_full_rounded = IconData(0xf5af, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {

    return Container(
        child: Row(
          children: [
            Icon(battery_full_rounded),
            Text('${pourcentage}%')
          ],
        )
    );
  }

}



