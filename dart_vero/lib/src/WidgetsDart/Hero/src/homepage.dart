import 'package:flutter/material.dart';
import 'package:dart_vero/src/WidgetsDart/Hero/src/pages/opcion1.dart';
import 'package:dart_vero/src/WidgetsDart/Hero/src/pages/opcion2.dart';
import 'package:dart_vero/src/WidgetsDart/Hero/src/pages/opcion3.dart';

class HomePage extends StatelessWidget {
  void pushRoute(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Opcio1Page()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Table(
        children: <TableRow>[
          TableRow(children: [
            Placeholder(fallbackHeight: 150),
            Placeholder(fallbackHeight: 150),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Opcio3Page())),
              child: Hero(
                tag: 'mini_max',
                child: Image(
                  image: //AssetImage('/assets/images/labrador.jpg'),
                      NetworkImage('https://picsum.photos/id/237/150/150.jpg'),
                ),
              ),
            ),
          ]),
          TableRow(children: [
            Placeholder(fallbackHeight: 150),
            Placeholder(fallbackHeight: 150),
            Placeholder(fallbackHeight: 150),
          ]),
          TableRow(children: [
            GestureDetector(
                onTap: () => pushRoute(context),
                child: Hero(tag: 'logo', child: FlutterLogo(size: 150))),
            Placeholder(fallbackHeight: 150),
            Placeholder(fallbackHeight: 150),
          ]),
          TableRow(children: [
            Placeholder(fallbackHeight: 150),
            GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Opcio2Page())),
                child: FlutterLogo(size: 150)),
            Container(),
          ]),
        ],
      ),
    );
  }
}
