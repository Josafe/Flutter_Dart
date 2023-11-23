import 'package:dart_vero/src/App2Pasqual/VincularSQLiteClients/DBClients.dart';
import 'package:dart_vero/src/App2Pasqual/VincularSQLiteClients/Clients.dart';
import 'package:flutter/material.dart';

import 'DBClients.dart';

class Editar extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  final nomController = TextEditingController();
  final idController = TextEditingController();
  final corrController = TextEditingController();
  final pswdController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Clients client = ModalRoute.of(context)!.settings.arguments;
    nomController.text = client.nom;
    idController.text = client.id as String;
    corrController.text = client.correu;
    pswdController.text = client.pswd;

    return Scaffold(
        appBar: AppBar(
            title: Text("Guardar")
        ),
        body: Container(
            child: Padding(
              child: Form (
                  key: _formKey,
                  child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: nomController,
                          validator: (value) {
                            if (value!.isEmpty)
                              return "El nom es obligatori";
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "Nom"
                          ),

                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: pswdController,
                          validator: (value) {
                            if (value!.isEmpty)
                              return "La contrasenya es obligatoria";
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "Contrasenya"
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: corrController,
                          validator: (value) {
                            if (value!.isEmpty)
                              return "El correu electronic es obligatori";
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "Correu"
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                if (client.id > 0) {
                                  client.nom = nomController.text;
                                  client.id = idController.hashCode;
                                  client.correu = DB.update(client) as String;
                                }
                                else
                                  DB.insert(Clients(nom: nomController.text, id: idController.hashCode, correu: corrController.text, pswd: pswdController.text));
                                Navigator.pushNamed(context,"/");
                              }
                            },
                            child: Text("Guardar"))
                      ]
                  )
              ),
              padding: EdgeInsets.all(15),
            )
        )
    );
  }
}