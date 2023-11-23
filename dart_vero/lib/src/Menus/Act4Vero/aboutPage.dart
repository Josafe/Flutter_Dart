import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Tornar enrere!'),
        ),
      ),
    );
  }
}