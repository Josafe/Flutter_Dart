import 'package:flutter/material.dart';


class Botons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePage2();
}

class HomePage2 extends State<Botons> {
  TextStyle estiloTexto = new TextStyle(fontSize: 25.0);
  int cont = 0;

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
              mainAxisAlignment: MainAxisAlignment.center,
              //Definim la posicio de la columna la qual en este cas te texts
              children: <Widget>[
                Text('Nº de clicks:', style: TextStyle(fontSize: 25)),
                Text('$cont clicks', style: estiloTexto),


                //mostrem la variable contador al text
              ],
            )
        ),
        floatingActionButton:
        Row (mainAxisAlignment: MainAxisAlignment.end, children: [ //Ho agruparem amb una filera de botons
          FloatingActionButton(
            child: Text('0'), //Icons.restart icons signe de reset i 0
            onPressed: () {
              setState(() { //Actualitzem el state del contador
                cont = 0; //Augmentem el valor del contador
              });
            },
          ),
          SizedBox(
            width: 750,
          ),
          FloatingActionButton(
            child: Icon(Icons.add), //icons signe suma
            onPressed: () {
              setState(() { //Actualitzem el state del contador
                cont++; //Augmentem el valor del contador
              });
            },
          ),
          SizedBox(
            width: 10,
          ),

          FloatingActionButton(
            child: Icon(Icons.remove), //icons signe de resta
            onPressed: () {
              setState(() { //Actualitzem el state del contador
                cont--; //Augmentem el valor del contador
              });

            },
          ),
        ],)
    );

  }

  @override
  State<StatefulWidget> createState() {
    return _homePage2State(); //retornem la classe homepage2state
  }
}
/*@override
  State<StatefulWidget> createState2() {
        return createState2(); //es un estado de un Widget dinámico (stateful)
      }// Aixo fa la mateix accio*/


class _homePage2State extends State<Botons>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(); //Retorna l'Scaffold
  }
}