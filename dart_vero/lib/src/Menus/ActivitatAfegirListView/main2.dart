import 'package:dart_vero/src/Menus/ActivitatAfegirListView/alert_page.dart';
import 'package:dart_vero/src/Menus/ActivitatAfegirListView/avatar_page.dart';
import 'package:dart_vero/src/Menus/ActivitatAfegirListView/card_page.dart';
import 'package:dart_vero/src/Menus/ActivitatAfegirListView/milista.dart';
import 'package:flutter/material.dart';

void main() => runApp(mainApp());

class mainApp extends StatelessWidget {
   mainApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  final rutas = <String, WidgetBuilder>{  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',


      onGenerateRoute: (RouteSettings settings){
        print('La ruta no encontrada es ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext builder) => AlertPage());
      },

      title: 'Ex6',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home:  MyHomePage(),
    );
  }
  Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
    return <String, Widget Function(BuildContext)>{
      '/': (BuildContext context) => MyHomePage(),
      '/alert': (BuildContext context) => AlertPage(),
      '/avatar': (BuildContext context) => AvatarPage(),
      '/card':  (BuildContext context) => CardPage(),
    };
  }
}