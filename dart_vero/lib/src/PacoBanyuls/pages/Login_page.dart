import 'package:flutter/material.dart';
import 'package:dart_vero/src/PacoBanyuls/pages/Calendar_page.dart';
import 'Register_page.dart';

class Login_page extends StatefulWidget {
  Login_page({Key? key}) : super(key: key);
  @override
  _Login_page createState() => _Login_page();
}

class _Login_page extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/Background.png'),
        )),
        child: Material(
            color: Colors.black.withOpacity(0.1),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(right: 80, left: 80),
              child: ListBody(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  //TextFiled de usuario
                  TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelText: 'Usuario',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3.0, color: Colors.white),
                            borderRadius: BorderRadius.circular(60)),
                        suffixIcon:
                            Icon(Icons.account_box, color: (Colors.white)),
                        icon: Icon(Icons.login, color: (Colors.white)),
                        labelStyle: new TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3.0, color: Colors.white),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      suffixIcon: Icon(
                        Icons.password,
                        color: (Colors.white),
                      ),
                      icon: Icon(Icons.lock, color: (Colors.white)),
                      labelStyle: new TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black12, onPrimary: Colors.white),
                    child: Text("Entrar"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Calendar_page()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black12, onPrimary: Colors.white),
                    child: Text("Registrarse"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Register_page()),
                      );
                    },
                  ),
                ],
              ),
            )));
  }
}
