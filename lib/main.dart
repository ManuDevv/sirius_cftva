


import 'package:flutter/material.dart';
import 'package:sirius_cftva/view/choix_train.dart';
import 'package:sirius_cftva/view/login_page.dart';

import 'package:sirius_cftva/view/menu.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  auth.authStateChanges().listen((User? user) {
    if (user == null) {
      
      print('Utilisateur non connecté');
      runApp(InitializeApp());
    } else {
      print('Utilisateur connecté: ' + user.email!);
      runApp(MyApp());
    }
  });
}

class InitializeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return login();
          }
          if (snapshot.hasError) {
            return const error();
          }
          return loading();
        });
  }
}

class error extends StatelessWidget {
  const error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Erreur de connexion')
    );
  }
}

class loading extends StatelessWidget {
  const loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: menu(),
    );
  }
}
class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_page(),
    );
  }
}