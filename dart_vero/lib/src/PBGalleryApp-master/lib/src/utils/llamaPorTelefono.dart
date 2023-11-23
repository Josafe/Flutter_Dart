import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LlamaTelWidget extends StatelessWidget {
  final String _phoneNumber;

  LlamaTelWidget(this._phoneNumber);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.phone),
      onPressed: () {
        launch('tel://$_phoneNumber');
      },
    );
  }
}
