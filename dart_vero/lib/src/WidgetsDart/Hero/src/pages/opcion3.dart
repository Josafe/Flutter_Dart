import 'package:flutter/material.dart';

class Opcio3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pagina Opcio3'),
        ),
        body: Column(
          children: <Widget>[
            Hero(
              tag: 'mini_max',
              child: Image(
                image: //AssetImage('/assets/images/labrador.jpg'),
                NetworkImage('https://picsum.photos/id/237/150/150.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Este xixet es mini Max',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ));
  }
}
