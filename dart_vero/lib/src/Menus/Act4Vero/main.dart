
import 'package:dart_vero/src/Menus/Act4Vero/servicesPage.dart';
import 'package:flutter/material.dart';

import 'aboutPage.dart';
import 'errorPage.dart';
import 'home_page.dart';
import 'package:dart_vero/src/pages/animated_container.dart';

void main() => runApp(mainApp());

class mainApp extends StatelessWidget {
  mainApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  final rutas = <String, WidgetBuilder>{};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /* routes: <String, WidgetBuilder>{ //No me funciona vinculant les routes
        '/': (BuildContext context) => MyHomePage(),
        '/alert': (BuildContext context) => AlertPage(),
        '/avatar': (BuildContext context) => AvatarPage(),
      }, */

      title: 'Ex6',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),

      //HomePage(), //Ja li estic dient que obre la ruta arrel amb l'initialRoute
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        '/about': (BuildContext context) => aboutPage(),
        '/error': (BuildContext context) => errorPage(),
        '/services': (BuildContext context) => servicesPage(),
        '/animated': (BuildContext context) => AnimatedContainerPage(),
      },
      onGenerateRoute: (RouteSettings settings){
        //En cas de que no n'hi hague cap definida en un dels botons que tenim aquest metode ens redirigira
        //fins la pag que li indiquem per a evitar que pete el programa

        print('Ruta no encontrada ${settings}');
      },
    );
  }
}