
//Vincular amb firebase
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/menuLateral.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';


import 'package:flutter/material.dart';
//import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/PujarImatges.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/Register.dart';



class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {

  get auth => email; //Mentre no funcione el firebase auth
  //FirebaseAuth auth = FirebaseAuth.instance;
  String email = 'joseantonio@gmail.com', password = '1234';



  /*String user = '';
  String pass = '';
  final UserController = TextEditingController();
  final ContraController = TextEditingController();
  FirebaseAuth fireAuth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;*/
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
            image: const DecorationImage(
              image: AssetImage('iMirror.jpg'),
                fit: BoxFit.cover,
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
                      email = value;
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
                      password = value;
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
                        final user = ""; /* = await auth.signInWithEmailAndPassword(
                            email: email, password: password);*/
                        if (user != null) {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return MainScreen();
                            },
                          ));
                        }
                        else {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                               return MainScreen();
                              }
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
                  /*  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GalleryPage()),
                      );

                      fireAuth.signInWithEmailAndPassword(
                          email: user, password: pass).whenComplete(() =>
                          )
                        db.collection("users").where(user == "admin").get();
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

