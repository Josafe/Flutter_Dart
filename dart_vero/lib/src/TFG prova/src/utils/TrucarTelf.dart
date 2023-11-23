import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TrucarTelf extends StatelessWidget {
  final String _phoneNumber;

  TrucarTelf(this._phoneNumber);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon:  Icon(Icons.phone),
      onPressed: (){
        launch('tel://$_phoneNumber');
      },
    );
  }
}