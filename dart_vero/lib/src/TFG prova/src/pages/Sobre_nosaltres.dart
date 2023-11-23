import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/utils/creaMenuLateral.dart';
import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/utils/TrucarTelf.dart';
import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/Google_maps.dart';

class sobreNosaltres extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acerca de Nosotros"),
        backgroundColor: Color(0XFF5F72E6),
      ),
      body: SingleChildScrollView(
        child: ListBody(children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/dokuoslambo.gif'), fit: BoxFit.cover),
              ),
            ),

          Padding(padding: EdgeInsets.only(top: 20.0)),
          Text(
            'Dokuos',
            style: TextStyle(
            fontWeight: FontWeight.bold,
              fontSize: 25,
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          Image(image: AssetImage('hola')),
          Text(
            "Dokuos, empresa especializada en paneles inteligentes y mantenimiento de sus equipos, se les puede encontrar en Plaça la Mesquita, 517, 518, 12600 La Vall d'Uixó, Castelló."),
          ButtonBar(
            children: [
              TrucarTelf('617 30 22 11'),
              IconButton(
                  icon: Icon(Icons.fmd_good_outlined),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UbicacionPB()));
              },
          ),]
          ),
    ]),
    ),
    drawer: buildDrawer(context),
    );
  }
}