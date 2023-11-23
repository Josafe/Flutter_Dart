import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:dart_vero/src/App2Pasqual/VincularSQLite/listado.dart';
import 'package:dart_vero/src/App2Pasqual/VincularSQLite/editar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQLite Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MiApp(),
    );
  }
}

class MiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        routes: {
          "/" : (context) => Listado(),
          "/editar": (context) => Editar()
        }
    );
  }
}