
import 'package:flutter/material.dart';
import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/Sobre_nosaltres.dart';
import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/Cita_page.dart';
import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/PujarImatges.dart';

Widget buildDrawer(context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        _buildHeader(),

        ListTile(
          title: Text('Afegir BBDD'),
          trailing: Icon(Icons.arrow_right),
          onTap: ()  => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PujarImatges()))
          },
        ),
        ListTile(
          title: Text('Borrar BBDD'),
          trailing: Icon(Icons.arrow_right),
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Cita_page()))
          },
        ),
        ListTile(
          title:  Text('Acerca de nosotros'),
          trailing: Icon(Icons.arrow_right),
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => sobreNosaltres()))
          },
          ),
          ],
    ),
    );
}

Widget _buildHeader() {
  return Container(
    height: 300,
    child: Stack(
      children: <Widget>[
        _buildHeaderBackground(),
        _buildProfilePicture(),
        _buildAlias(),
      ],
    ),
  );
}

Widget _buildHeaderBackground() {
  return Container(
    height: 300,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://scontent.fmad5-1.fna.fbcdn.net/v/t1.6435-9/28782747_1913542468670061_214982281603842048_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=e3f864&_nc_ohc=Fo9Y30PdD40AX_OIklj&_nc_ht=scontent.fmad5-1.fna&oh=00_AT9qvVF8bdUSMW2l_rSLz4vu7KzZVSwhFu6rIgK4uDLsaQ&oe=625885D6'),
        fit: BoxFit.cover,
    ),
     ),

  child: Container(
     color: Colors.black.withOpacity(0.8),
    ),
  );
}

Widget _buildProfilePicture() {
  return Align(
    alignment: Alignment.center,
    child: Container(
      margin: EdgeInsets.only(bottom: 60),
      width: 150,
      height: 150,
      decoration: BoxDecoration (
        image: DecorationImage(
          image: NetworkImage("https://scontent.fmad5-1.fna.fbcdn.net/v/t1.6435-9/28782747_1913542468670061_214982281603842048_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=e3f864&_nc_ohc=Fo9Y30PdD40AX_OIklj&_nc_ht=scontent.fmad5-1.fna&oh=00_AT9qvVF8bdUSMW2l_rSLz4vu7KzZVSwhFu6rIgK4uDLsaQ&oe=625885D6"),
          fit:  BoxFit.cover,
        ),
         borderRadius: BorderRadius.all(Radius.circular(100)),
         border: Border.all(color: Colors.white, width: 4,
         )),
    ),
  );
}

Widget _buildAlias() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Text(
        'Dokuos SL',
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
      ),
    ),
  );
}


