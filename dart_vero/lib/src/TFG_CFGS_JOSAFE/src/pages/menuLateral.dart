import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/Select_time.dart';
import 'package:dart_vero/src/TimerDart/gradient_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Drawer (
                child: SingleChildScrollView( //serveix per a scrollear amunt i avall
                child: Column(
                  children: [

                  DrawerHeader(
                      child: Image.asset("assets/iMirror.png"), //Logo principal
                  ),

                    DrawerListTile(title: "Afegir BBDD", svgSrc: "assets/outline_add_black_24dp.png", press: (){}),

                    DrawerListTile(title: "Borrar BBDD", svgSrc: "assets/outline_delete_black_24dp.png", press: (){}),

                    DrawerListTile(title: "Alarma", svgSrc: "assets/outline_alarm_black_24dp.png", press: (){ Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SelectTime(); //Pagina per a afegir alarmes
                      },
                    )); },),

                  ],
            ),
    ),),
    ),
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.blueAccent,
                ),
            ),
          ],
        ),
      ),
    );

  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,

}) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.black54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black54),
      ),
    );
  }
}