import 'package:flutter/material.dart';
import 'package:dart_vero/src/PacoBanyuls/pages/Login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Paco Banyuls',
        debugShowCheckedModeBanner: false,
         home: Login_page(),
        );
  }
}

