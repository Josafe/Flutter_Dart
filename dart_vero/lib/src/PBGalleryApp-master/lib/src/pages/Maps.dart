import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UbicacionPB extends StatefulWidget {
  const UbicacionPB({Key? key}) : super(key: key);

  @override
  _UbicacionPBState createState() => _UbicacionPBState();
}

class _UbicacionPBState extends State<UbicacionPB> {
  Marker origen = Marker(
      markerId: MarkerId("origen"),
      infoWindow: InfoWindow(title: 'Origen'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: LatLng(39.8227229, -0.2339000));
  //Marker destino;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ubicación Paco Bañuls"),
      ),
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(39.8227229, -0.2339000), zoom: 20),
        //markers: origen,//{if (origen != null) origen, if (destino != null) destino},
      ),
    );
  }
  /*
  void _addMarker(LatLng pos) {
    if (origen == null || (origen != null && destino != null)) {
      setState(() {
        origen = Marker(
          markerId: MarkerId("origen"),
          infoWindow: InfoWindow(title: 'Origen'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          position: LatLng(39.8227229, -0.2339000),
        );
      });
    } else {
      setState(() {
        destino = Marker(
          markerId: MarkerId('destino'),
          infoWindow: InfoWindow(title: 'Destino'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
          position: LatLng(39.8227229, -0.2339000),
        );
      });
    }
  }*/
}
