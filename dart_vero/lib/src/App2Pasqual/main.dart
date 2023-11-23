import 'package:dart_vero/src/MainMenu/main.dart';
import 'package:flutter/material.dart';
import 'package.sqflite/sqflite.dart';
import 'package:dart_vero/src/App2Pasqual/otra_pagina.dart';
import 'package:dart_vero/src/App2Pasqual/productos_model.dart';
import 'package:dart_vero/src/App2Pasqual/pedido_lista.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'App Compras'),
    );
  }
}