import 'package:dart_vero/src/1aAppStateful/home_page_stateful.dart';
import 'package:dart_vero/src/1aAppStateful/main.dart';
import 'package:dart_vero/src/Menus/Act4Vero/servicesPage.dart';
import 'package:dart_vero/src/pages/animated_container.dart';
import 'package:flutter/material.dart';
import 'aboutPage.dart';
import 'errorPage.dart';

class HomePage extends StatefulWidget {
  HomePage  ({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navegació entre pantalles', textAlign: TextAlign.right),

      ),
      floatingActionButton:
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
            child: Text('AbP'),
            onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => aboutPage()));
            }),
        FloatingActionButton(
            child: Text('ErP'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => errorPage()));

            }),
        FloatingActionButton(
            child: Text('SeP'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => servicesPage()));
            }),
        FloatingActionButton(
            child: Text('ApC'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatedContainerPage()));
            }),
        FloatingActionButton(
            child: Text(''),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => servicesPage()));
            }),
      ],),
    );
  }

  Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
    return <String, Widget Function(BuildContext)>{
      '/': (BuildContext context) => HomePage(), //Principal
      '/error': (BuildContext context) => errorPage(),
      '/services': (BuildContext context) => servicesPage(),
      '/about': (BuildContext context) => aboutPage(),
      '/animated': (BuildContext context) => AnimatedContainerPage(),

    };
  }
}