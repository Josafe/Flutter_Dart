import 'package:flutter/material.dart';
import 'package:dart_vero/src/1aAppStateful/home_page_stateful.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) { //El metodo build retorna un build   widget, necessita un buildContext
    return MaterialApp( //Aquest parametre pot rebre altres widgets
      home: Center(
          child: Botons(), //Li passarem un text al constructor i a continuacio podem incorporar mes parametres seguit de la coma
    ),
    );
    }
}