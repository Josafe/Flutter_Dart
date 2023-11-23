import 'package:flutter/material.dart';

class Opcio1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pagina Opcio1'),
        ),
        body: Column(
          children: <Widget>[
            Hero(tag: 'logo', child: FlutterLogo(size: 450)),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Este Iconet de Flutter es BONICO',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ));
  }
}
