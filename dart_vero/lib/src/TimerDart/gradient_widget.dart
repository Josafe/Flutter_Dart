import 'package:dart_vero/src/1aAppStateful/myapp.dart';
import 'package:flutter/material.dart';

class BackgroundColorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.orangeAccent,

  appBar: AppBar(
    title: Text('Countdown'),
    centerTitle: true,
  ),
    body: Center(child: FlutterLogo(size: 200,),),
  );
}