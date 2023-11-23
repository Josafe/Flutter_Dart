import 'dart:core';
import 'package:dart_vero/src/App2Pasqual/VincularSQLiteProductes/Productes.dart';
import 'package:dart_vero/src/App2Pasqual/VincularSQLiteProductes/DBProductes.dart';
import 'package:flutter/material.dart';

class Listado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Productes"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context,"/editar",arguments: Productes(id:0,nom:"",preu: 0));

          },
        ),
        body: Container(
            child: Lista()
        )
    );
  }
}

class Lista extends StatefulWidget {

  @override
  _MiLista createState() => _MiLista();

}

class _MiLista extends State<Lista> {

  List<Productes> productes = [];

  @override
  void initState() {
    cargaProductes();
    super.initState();
  }

  cargaProductes() async {
    List<Productes> auxProductes = await DB.productes();

    setState(() {
      productes = auxProductes;
    });

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productes.length,
        itemBuilder:
            (context, i) =>
            Dismissible(key: Key(i.toString()),
                direction: DismissDirection.startToEnd,
                background: Container (
                    color: Colors.red,
                    padding: EdgeInsets.only(left: 5),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.delete, color: Colors.white)
                    )
                ),
                onDismissed: (direction) {
                  DB.delete(productes[i]);
                },
                child: ListTile(
                    title: Text(productes[i].nom),
                    trailing: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context,"/editar",arguments: productes[i]);
                        },
                        child: Icon(Icons.edit)
                    )
                )
            )
    );
  }

}