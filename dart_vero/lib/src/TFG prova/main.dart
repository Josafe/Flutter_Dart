import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/Login.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/utils/creaMenuLateral.dart';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FutureBuilder(
       //  future: firebaseIniciacion(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Login();
            } else {
              return Login();
            }
          }),
      debugShowCheckedModeBanner: false,
    );
  }
}

//Iniciacion de la base de datos
/*
Future firebaseIniciacion() async {
  FirebaseApp initialization = await Firebase.initializeApp();
  return initialization;
}


Future firebaseUsuario() async {
  final usuario = await FirebaseAuth.instance.currentUser;
  return usuario;
}


Future selectFile() async {
  final result = await FilePicker.platform.pickFiles(allowMultiple: false);

  if (result == null) return;
  final path = result.files.single.path!;

}

Future uploadfile() async {}
*/
