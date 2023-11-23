import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();

}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  late AnimationController _controller;
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.lightBlueAccent;
  BorderRadiusGeometry _geometry = BorderRadius.circular(2.0);

  @override
 Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.slowMiddle,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _geometry,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () => _cambiarForma(),
      ),
    );
  }

  void _cambiarForma(){

    final random = Random();

   /* _width += 50;
    _height += 50.0;
    _color = Colors.red; */ //Incrementara 50 i color roig

    setState( () {
      _width = random.nextInt(600).toDouble();
      _height = random.nextInt(600).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), //Roig
          random.nextInt(255), //Verd
          random.nextInt(255), //Blau
          1);
      _geometry = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }

}
