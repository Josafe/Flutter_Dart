import 'dart:ui';

import 'package:dart_vero/src/1aAppStateful/myapp.dart';
import 'package:flutter/material.dart';


class InteractonModels extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePage2();
}

class HomePage2 extends State<InteractonModels> {
  TextStyle estiloTexto = new TextStyle(fontSize: 25.0);
  int cont = 0;
  final double elevation = 0;

  // final TextStyle estilText2 = new TextStyle()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

            elevation: 100.0, //genera un sombrejat baix del appbar
            title: Text('Widget Hero'),
            centerTitle: true  //Centra el titol de la appBar
        ),
        body: Table(
          // child: Text('Otro texto'), //Nomes es pot definir 1 child per widget ja que es passa a traves d'un constructor
            children: <TableRow>[
        TableRow(children: [
        GestureDetector(
            onTap: () => pushRoute(context),
            child: Hero(tag: 'logo', child:
            Image (image: AssetImage('assets/images/whitetea.jpg'),
            height: 150,
            width: 150,),),
          ),
    ]),
    ]),);
  }
  

  @override
  State<StatefulWidget> createState() {
    return _homePageWState(); //retornem la classe
  }

  pushRoute(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext) => MyApp()));
  }
}
/*@override
  State<StatefulWidget> createState2() {
        return createState2(); //es un estado de un Widget dinámico (stateful)
      }// Aixo fa la mateix accio*/


class _homePageWState extends State<InteractonModels>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(); //Retorna l'Scaffold
  }
}