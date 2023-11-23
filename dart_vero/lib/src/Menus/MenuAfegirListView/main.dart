

import 'package:flutter/material.dart';
import 'package:dart_vero/src/Menus/MenuAfegirListView/homepagetemp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('ListaJson'),

          ),
          body: HomePageTemp(),
        floatingActionButton:
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          child: Text('Afegir ListView'),
          onPressed: () {
            setState({
              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text('Favorites'),
                onTap: () => MyApp(),
                trailing: Icon(Icons.settings),
              ),

            });
          },
        ),
      ],
      ),
      ),

    );

  }

  void setState(Set<ListTile> set) {}
}