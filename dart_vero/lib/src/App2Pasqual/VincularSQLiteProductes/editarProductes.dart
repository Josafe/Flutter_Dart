import 'package:dart_vero/src/App2Pasqual/VincularSQLiteProductes/DBProductes.dart';
import 'package:dart_vero/src/App2Pasqual/VincularSQLiteProductes/Productes.dart';
import 'package:dart_vero/src/App2Pasqual/VincularSQLiteExemple/animal.dart';
import 'package:flutter/material.dart';

import 'DBProductes.dart';

class Editar extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  final nomController = TextEditingController();
  final preuController = TextEditingController();
  final idController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Productes productes = ModalRoute.of(context)!.settings.arguments;
    idController.text = productes.id as String;
    nomController.text = productes.nom;
    preuController.text = productes.preu as String;


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
                          controller: idController,
                          validator: (value) {
                            if (value!.isEmpty)
                              return "La id es obligatoria";
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "ID"
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: preuController,
                          validator: (value) {
                            if (value!.isEmpty)
                              return "El preu";
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "Preu"
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                if (productes.id > 0) {
                                  productes.nom = nomController.text;
                                  productes.id = idController.hashCode;
                                  productes.preu = preuController.hashCode;
                                  DB.update(productes);
                                }
                                else
                                  DB.insert(Productes(nom: nomController.text, id: idController.hashCode, preu: preuController.hashCode));
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