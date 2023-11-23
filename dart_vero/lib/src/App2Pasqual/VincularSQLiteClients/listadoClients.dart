import 'dart:core';
import 'dart:html';
import 'package:dart_vero/src/App2Pasqual/VincularSQLiteClients/Clients.dart';
import 'package:dart_vero/src/App2Pasqual/VincularSQLiteClients/DBClients.dart';
import 'package:flutter/material.dart';

class Listado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Clients"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context,"/editar",arguments: Clients(id:0,nom:"", correu:"", pswd: ""));

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

  List<Clients> clients = [];

  @override
  void initState() {
    cargaClients();
    super.initState();
  }

  cargaClients() async {
    List<Clients> auxClients = await DB.clientes();

    setState(() {
      clients = auxClients;
    });

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: clients.length,
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
                  DB.delete(clients[i]);
                },
                child: ListTile(
                    title: Text(clients[i].nom),
                    trailing: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context,"/editar",arguments: clients[i]);
                        },
                        child: Icon(Icons.edit)
                    )
                )
            )
    );
  }

}