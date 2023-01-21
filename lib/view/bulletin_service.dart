import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sirius_cftva/style/colors.dart';

class bulletinService extends StatefulWidget {
  bulletinService({Key? key}) : super(key: key);

  @override
  State<bulletinService> createState() => _bulletinServiceState();
}

class _bulletinServiceState extends State<bulletinService> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xff0f7296),
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Bulletin de service CFTVA"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(10, 100, 10, 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
     child: Column(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                 Column(
                  children: [
                     Container(width: 200,
               padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: whitecolor),
               child: TextFormField(
                decoration: InputDecoration(
                    label: Text('Nom')
                ),
               ),
               ),
               SizedBox(
                height: 10,
               ),
                 Container(width: 200,
               padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: whitecolor),
               child: TextFormField(
                decoration: InputDecoration(
                    label: Text('Prénom')
                ),
               ),
               )
                  ],
                 ),
                 Container(
                  child: Column(
                    children: [
                      Text("Dépot")
                    ],
                  ),
                 )
                ],
              )
            
               
                ],
              ),
            
          ),
      ]
        )
    
     ),
      );
  
  }
}
