import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class servicesPage extends StatelessWidget {
  const servicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Services Page"),
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