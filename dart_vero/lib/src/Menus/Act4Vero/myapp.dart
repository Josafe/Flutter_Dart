import 'package:dart_vero/src/Menus/Act4Vero/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) { //El metodo build retorna un build   widget, necessita un buildContext
    return MaterialApp( //Aquest parametre pot rebre altres widgets
      home: Center(
        child: HomePage(), //Li passarem un text al constructor i a continuacio podem incorporar mes parametres seguit de la coma
      ),
    );
  }
}