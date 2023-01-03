import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:google_fonts/google_fonts.dart';
import '../style/colors.dart';
import 'loginScreen.dart';

class SplashScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: AnimatedSplashScreen(
        
          curve: Curves.easeInOutCubicEmphasized,
          backgroundColor: maincolor,
          splashTransition: SplashTransition.scaleTransition,
       // ca ne marche pas => 
       // pageTransitionType: PageTransitionType.scale,
          duration: 4000,
          splash:
           
         
            Column(
              children: [
                Text(
                  'AMAC CFTVA',
                  style: GoogleFonts.cormorantGaramond(
                    color: whitecolor,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
             
              ],
            ),
          
          nextScreen: loginScreen()),
    );
  }
}
