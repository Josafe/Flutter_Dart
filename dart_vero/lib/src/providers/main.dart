import 'package:flutter/material.dart';
import 'package:dart_vero/src/providers/homepagetemp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('ListaJson'),

          ),
          body: HomePageTemp()),//Scaffold
    );
  }
}