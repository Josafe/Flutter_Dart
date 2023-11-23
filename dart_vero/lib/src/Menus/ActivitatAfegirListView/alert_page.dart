import 'package:dart_vero/src/pages/avatar_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: AlertPage(),
  ));
}

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      body: Center(

        child: ElevatedButton(

          child: const Text('Ruta d obertura'),
          onPressed: () {
            AlertDialog(
                title: const Text('Titol del AlertDialog'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: const <Widget>[
                      Text('Aixo es una pestanya alert'),
                      Text('Vols tornar enrere?'),
                    ],
                  ),
                ));
            Navigator.of(context).pop(AlertDialog());
          },
        ),
      ),
    );
  }
}

