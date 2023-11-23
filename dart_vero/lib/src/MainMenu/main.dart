import 'package:flutter/material.dart';
import 'package:dart_vero/src/MainMenu/navbar.dart';

import 'navbar.dart';

void main(){
  runApp (MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
      title: Text('Menu lateral amb botons', textAlign: TextAlign.right),

      ),
    );
  }
}