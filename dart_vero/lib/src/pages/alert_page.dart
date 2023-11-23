import 'package:dart_vero/src/pages/avatar_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: AlertPage(),
  ));
}

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ruta d obertura'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AlertDialog(
                title: Text('Title'),
                content: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJyUEdgRMkgGHbaXMK2A0Kt5FiShIMV1xvRF8DVa90FKYNe6GAGqcb9E4tgqHw1tTpCuc&usqp=CAU'),
    
              )),
            );
          },
        ),
      ),
    );
  }
}




