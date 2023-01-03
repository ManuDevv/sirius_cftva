import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

FirebaseAuth auth =FirebaseAuth.instance;



class login_page extends StatelessWidget {
   login_page({Key? key}) : super(key: key);

  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    var largeur=MediaQuery.of(context).size.width/2;
    var hauteur=MediaQuery.of(context).size.height/1.2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sirius CFTVA'),
        actions: [
          IconButton(
              onPressed: (){auth.signOut();},
              icon: Icon(Icons.login))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/caravelle.jpeg')
            )
          ),
          child: Center(
            child: Container(
              width: largeur,
              height: hauteur,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Bienvenue',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Application reservé aux conducteurs du CFTVA',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),

                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade700,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: TextField(
                        controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline),

                        border: InputBorder.none,
                        labelText: 'Email de moi'
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.shade700,
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: TextField(
                       controller: passwordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),

                          border: InputBorder.none,
                          labelText: 'Votre mot de passe'
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        primary: Colors.white,
                        elevation: 30
                      ),
                      onPressed: ()async{
                        try {
                          auth.signInWithEmailAndPassword(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim());

                        } on FirebaseAuthException catch (e) {
                         ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(content: Text(e.code))
                         );
                        }

                      }, child: Text('Se connecter',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 30
                  ),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
