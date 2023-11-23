import 'package:flutter/material.dart';

class Opcio2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pagina Opcio2'),
        ),
        body: Column(
          children: <Widget>[
            FlutterLogo(size: 450),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Esta transició no porta el hero',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ));
  }
}
