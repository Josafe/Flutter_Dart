import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:testfirebase/main2.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String email = '', password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login - Firebase Auth'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'Email'),
            onChanged: (value) {
              email = value;
            },
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: 'Contraseña'),
            onChanged: (value) {
              password = value;
            },
          ),
          TextButton.icon(
              onPressed: () async {
                try {
                  final user = await auth.signInWithEmailAndPassword(
                      email: email, password: password);
                  if (user != null) { //Si l'usuari existeix et porta a la pag principal
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const MyHomePage();
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
              icon: const Icon(Icons.verified_user),
              label: const Text('Entrar'))
        ],
      ),
    );
  }
}
