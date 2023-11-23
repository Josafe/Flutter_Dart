import 'package:flutter/material.dart';

class Register_page extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Registro de nuevo usuario')),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: SingleChildScrollView(
        child: ListBody(
          children: [
            Icon(
              Icons.people,
              size: 250,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Nombre de usuario',
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3.0),
                      borderRadius: BorderRadius.circular(60)),
                  suffixIcon: Icon(Icons.account_box),
                  icon: Icon(Icons.login),
                  labelStyle: new TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3.0),
                      borderRadius: BorderRadius.circular(60)),
                  suffixIcon: Icon(Icons.enhanced_encryption),
                  icon: Icon(Icons.password_rounded),
                  labelStyle: new TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Repit ContraPasswordseña',
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3.0),
                      borderRadius: BorderRadius.circular(60)),
                  suffixIcon: Icon(Icons.enhanced_encryption),
                  icon: Icon(Icons.password_rounded),
                  labelStyle: new TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3.0),
                      borderRadius: BorderRadius.circular(60)),
                  suffixIcon: Icon(Icons.mail),
                  icon: Icon(Icons.mail_sharp),
                  labelStyle: new TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, onPrimary: Colors.white),
              child: Text("Enviar"),
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
