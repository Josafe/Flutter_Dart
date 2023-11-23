import 'package:flutter/material.dart';


    // class HomePage extends StatelessWidget { Amb lo stateless no es podran guardar els valors
      class HomePage2 extends StatefulWidget {

      final TextStyle estilText = new TextStyle(fontSize: 20); //Definim l'estil de text amb una variable (linea 22 es dintre)
      final int cont = 0;
      // final TextStyle estilText2 = new TextStyle()
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('El title mes bonic de 2n DAM'),
            centerTitle: true //Centra el titol de la appBar
          ),
          body: Center(
           // child: Text('Otro texto'), //Nomes es pot definir 1 child per widget ja que es passa a traves d'un constructor
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //Definim la posicio de la columna la qual en este cas te texts
              children: <Widget> [
                Text('Hola'),
                Text('Adeu'),
                Text('Nº de clicks:', style: TextStyle(fontSize: 25),),
                Text('$cont clicks', style: estilText) //mostrem la variable contador al text
              ],
            )
          ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {}, //accio mentres press
              child: Icon(Icons.add)
            ),
             );
      }

  @override
  State<StatefulWidget> createState() {

    throw UnimplementedError();
  }

  /* @override
  State<StatefulWidget> createState() {
        return _MiWidgetState(); //es un estado de un Widget dinámico (stateful)
      }*/// Aixo fa la mateix accio
      }

      class _MiState extends State<HomePage2>{
        @override
        Widget build(BuildContext context) {
        return Scaffold(); //Retorna l'Scaffold
         }

      }