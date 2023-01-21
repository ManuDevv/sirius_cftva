import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sirius_cftva/style/colors.dart';

import '../services/deconexion.dart';
import 'main_menuScreen.dart';

class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xff0f7296),
                Color(0xff0f7296),
                Color(0xffa68f49)
              ])),
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 10, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/logo_cftva.png",
                  color: Colors.white,
                  scale: 5,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "AMAC",
                  style: GoogleFonts.cormorantGaramond(
                      color: Colors.white, fontSize: 50),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Application Mobile d'Aide à la Conduite",
                  style: GoogleFonts.cormorantGaramond(
                      color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text('Email'),
                    labelStyle:
                        GoogleFonts.cormorantGaramond(color: Colors.white),
                    // ignore: prefer_const_constructors
                    prefixIcon: Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    
                    label: Text('Mot de passe'),
                    // errorText: 'Mot de passe éronné',
                    labelStyle:
                        GoogleFonts.cormorantGaramond(color: Colors.white),
                    prefixIcon: const Icon(
                      Icons.lock_open,
                      color: Colors.white,
                    ),
                    suffixIcon: IconButton(
                      icon: isPasswordVisible
                          ? Icon(
                              Icons.visibility,
                              color: whitecolor,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: whitecolor,
                            ),
                      onPressed: () {
                       setState(() {
                          isPasswordVisible = !isPasswordVisible;
                       });
                        print(isPasswordVisible);
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      auth.signInWithEmailAndPassword(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim());
                    } on FirebaseAuthException catch (e) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(e.code)));
                    }
                  },
                  // ignore: sort_child_properties_last
                  child: Text(
                    'Connexion',
                    style: GoogleFonts.cormorantGaramond(
                        color: Colors.white, fontSize: 50, letterSpacing: 1.5),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    side: BorderSide(
                        color: Colors.white.withOpacity(0.5), width: 3),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
