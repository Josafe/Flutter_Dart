import 'package:flutter/material.dart';
import 'package:proyecto_paco/src/pages/Login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FutureBuilder(
          future: firebaseIniciacion(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Login_page();
            } else {
              return const CircularProgressIndicator();
            }
          }),
      debugShowCheckedModeBanner: false,
    );
  }
}

Future firebaseIniciacion() async {
  FirebaseApp initialization = await Firebase.initializeApp();
  return initialization;
}

Future firebaseUsuario() async {
  final usuario = await FirebaseAuth.instance.currentUser;
  return usuario;
}

/*
Future selectFile() async {
  final result = await FilePicker.platform.pickFiles(allowMultiple: false);

  if (result == null) return;
  final path = result.files.single.path!;

  setState(() => file = File(path));
}

Future uploadfile() async {}
*/
