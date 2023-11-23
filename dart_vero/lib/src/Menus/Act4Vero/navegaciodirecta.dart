
import 'package:dart_vero/src/Menus/Act4Vero/errorPage.dart';
import 'package:dart_vero/src/Menus/Act4Vero/servicesPage.dart';
import 'package:flutter/material.dart';

import 'aboutPage.dart';

class navegacioDirecta extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Navegació de ListViews'),
        backgroundColor: (Colors.yellow),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('About Page'),
            leading: Icon(Icons.one_k_plus),
            trailing: Icon(Icons.fifteen_mp),
            
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => aboutPage()));
            },
          ),
          ListView(
          children: [
            ListTile(
              title: Text('Error Page'),
              leading: Icon(Icons.eleven_mp_rounded),
              trailing: Icon(Icons.nineteen_mp),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => errorPage()));
              }
            ),

          ],
          ),
          ListView(
            children: [
              ListTile(
                title: Text('Services Page'),
                leading: Icon(Icons.eleven_mp_rounded),
                trailing: Icon(Icons.eighteen_mp_outlined),
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => servicesPage()));
              },
              ),
            ],
          ),

        ],
      ),
    );
  }
}