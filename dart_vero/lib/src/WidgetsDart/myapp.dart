import 'package:flutter/material.dart';
import 'package:dart_vero/src/WidgetsDart/implementwidgets.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build (BuildContext context) { //El metodo build retorna un build   widget, necessita un buildContext
  return Scaffold(
    appBar: AppBar(
      title: Text('Pag1'),
    ),

    body: Column(
      children: <Widget>[
        Hero(tag: 'logo', child: Image (image: AssetImage('assets/images/whitetea.jpg'),
          height: 1500,
          width: 1500,),),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Widget Hero',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    ),
  );
  }
}