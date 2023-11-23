import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_paco/src/gallery_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Register_page.dart';

class Login_page extends StatefulWidget {
  Login_page({Key? key}) : super(key: key);
  @override
  _Login_page createState() => _Login_page();
}

class _Login_page extends State<Login_page> {
//  FirebaseAuth auth = FirebaseAuth.instance;
// String email = '', password = '';
  String user = '';
  String pass = '';
  /* final UserController = TextEditingController();
  final ContraController = TextEditingController();
  FirebaseAuth fireAuth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;*/

/*
  Future<User?> signInUser(String email, String password) async {
    UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  }

  Future<User?> registerUser(String email, String password) async {
    UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  }
*/

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/Background.png'),
        )),
        child: Material(
            color: Colors.black.withOpacity(0.1),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(right: 80, left: 80),
              child: ListBody(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  //TextFiled de usuario
                  TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    //controller: UserController,
                    decoration: InputDecoration(
                        labelText: 'Usuario',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3.0, color: Colors.white),
                            borderRadius: BorderRadius.circular(60)),
                        suffixIcon:
                            Icon(Icons.account_box, color: (Colors.white)),
                        icon: Icon(Icons.login, color: (Colors.white)),
                        labelStyle: new TextStyle(color: Colors.white)),
                    onChanged: (value) {
                   //   email = value;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    cursorColor: Colors.white,
                    //controller: ContraController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3.0, color: Colors.white),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      suffixIcon: Icon(
                        Icons.password,
                        color: (Colors.white),
                      ),
                      icon: Icon(Icons.lock, color: (Colors.white)),
                      labelStyle: new TextStyle(color: Colors.white),
                    ),
                    onChanged: (value) {
                   //   password = value;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black12, onPrimary: Colors.white),
                    child: Text("Entrar"),
                    onPressed: () async {
                      try {
                        // final user = await auth.signInWithEmailAndPassword(
                         //  email: email, password: password);
                        if (user != null) {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return GalleryPage();
                            },
                          ));
                        }
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg: e.toString(),
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                    /*onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GalleryPage()),
                      );

                      /*fireAuth.signInWithEmailAndPassword(
                          email: user, password: pass).whenComplete(() => 
                          )
                        db.collection("users").where(user == "admin").get();*/
                    },*/
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black12, onPrimary: Colors.white),
                    child: Text("Registrarse"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Register_page()),
                      );
                    },
                  ),
                ],
              ),
            )));
  }
}
