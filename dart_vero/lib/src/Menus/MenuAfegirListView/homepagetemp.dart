import 'package:flutter/material.dart';

import 'package:dart_vero/src/Menus/MenuAfegirListView/menu_providers.dart';


class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prova'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:
      _miLista(), /*ListView(
        //_milista()
        children: _listaItems(),
      ),*/
    );
  }


/*
ListView _milista1() {
  return ListView(
    // ignore: prefer_const_literals_to_create_immutables
    children: <Widget>[
      // ListTile es un widget que funciona como un bloque del ListView
      // Tiene muchas propiedades que nos ayudan a ordenar la información.
      ListTile(
        // Título
        title: Text('Primero'),
        // Subtitulo
        subtitle: Text('Este es el primer Tile'),
        // Icono inicial del bloque
        leading: Icon(Icons.add),
        // Icono final del bloque
        trailing: Icon(Icons.arrow_forward),
        // Función que se ejecuta al hacer clic en él
        onTap: () {},
      ),
      ListTile(
        title: Text('Segundo'),
        onTap: () {},
      )
    ],
    // Padding a todos los lados
    padding: EdgeInsets.all(10),

    // Padding exacto a los lados verticales y horizontales
    padding: EdgeInsets.symmetric(horizontal: 23.0, vertical: 10.0),
  );
}
*/
  /*
//Mi función que retorna una ListView
List<Widget> _crearItems() {
  final lista = <Widget>[];
  for (String opt in opciones) {
    //Para cada elemento de mi array
    //Nos creamos una variable temporal que será el Widget que necesitamos mostrar en la lista, es decir el ListTile
    final tempWidget = ListTile(title: Text(opt)); //ya tenemos el widget creado

    lista.add(tempWidget); //lo añadimos a nuestra lista, dentro del ciclo FOR

    // Divider es un widget q. crea una división entre cada elemento de la lista.
    // Agregamos un Divider debajo de cada elemento de la lista
    lista.add(Divider());
  }
  return lista; //que ahora ya está llena de los Widgets que quiero mostrar
}
*/
/*
List<Widget> _crearItemsCorto1() {
  var widget = opciones.map((item) {
    return ListTile(
      title: Text(item),
    );
  }).toList();
  return widget;
}
*/
Widget _miLista() {
  return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data!),
        );
      });
  /*
  return ListView(
    children: _listaItems(),
  );
*/
}

List<Widget> _listaItems(List<dynamic> data) {
  final List<Widget> lista = [];

  data.forEach((opcion) {
    final tempWidget = ListTile(
      title: Text(opcion['texto']),
      leading: Icon(opcion['icon']),
      trailing: Icon(Icons.navigate_next),
    );

    lista.add(tempWidget);
    lista.add(const Divider());
  });

  return lista;
  /*[
    const ListTile(title: Text('Hola!')),
    const Divider(),
    const ListTile(title: Text('Hola!')),
    const Divider(),
    const ListTile(title: Text('Hola!')),
  ];*/
}
/*
List<Widget> _crearItemsCorto() {
  int cont = 0;
  return opciones.map((item) {
    cont++;
    return Column(
      children: [
        ListTile(
          title: Text(item + '!'),
          subtitle: Text('Subtitulo $cont'),
          leading: Icon(Icons.add),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {},
        ),
        Divider(),
      ],
    );
  }).toList();
}*/
}
