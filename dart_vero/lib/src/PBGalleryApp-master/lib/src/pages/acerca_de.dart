import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:proyecto_paco/src/pages/maps.dart';
import 'package:proyecto_paco/src/utils/creaDrawer.dart';
import 'package:proyecto_paco/src/utils/llamaPorTelefono.dart';

class AcercaDe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de Nosotros'),
        backgroundColor: Color(0XFF5F72E6),
      ),
      body: SingleChildScrollView(
        child: ListBody(children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/pacb.jpeg'), fit: BoxFit.cover),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          //Image(image: AssetImage('assets/descarga.jfif')),
          Text(
            'Paco Banyuls',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          Text(
              "A este mamífero se le suele ver reptando para pillarte desprevenido y poderte hacer su ataque especial, el tan llamado ataque de las mil fotografías, este ataque consiste en que utiliza su preciado artilugio para realizar una ráfaga de fotografías con flash para dejar completamente ciego y desorientado a su objetivo. Su habitad natural suelen ser las praderas o sitios con hierba alta donde poder ocultarse, aunque también se le puede encontrar en C/ Rosario Creixach, 7 12600 La Vall D'Uixó (Castellón), Comunidad Valenciana."),
          ButtonBar(
            children: [
              LlamaTelWidget('123456789'),
              IconButton(
                icon: Icon(Icons.fmd_good_outlined),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UbicacionPB()));
                },
              )
              /*GoogleMap(
                  initialCameraPosition: CameraPosition(
                      target: LatLng(39.8227229, -0.2342613), zoom: 30))*/
            ],
          ),
        ]),
      ),
      drawer: buildDrawer(context),
    );
  }
}
