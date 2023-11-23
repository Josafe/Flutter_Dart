import 'package:flutter/material.dart';
import 'package:dart_vero/src/Menus/MenuLateral/navbar.dart';

void main(){
  runApp (MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false, //llevar banner debug
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
      body: NavBar(), //body per a menu normal
      appBar: AppBar(
      title: Text('Menu principal amb botons', textAlign: TextAlign.right),

      ),
    );
  }
}