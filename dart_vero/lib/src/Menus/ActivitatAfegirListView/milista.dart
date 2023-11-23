import 'package:dart_vero/src/Menus/ActivitatAfegirListView/avatar_page.dart';
import 'package:dart_vero/src/Menus/ActivitatAfegirListView/main2.dart';
import 'package:dart_vero/src/Menus/MenuAfegirListView/menu_providers.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends State<MyHomePage> {

  var opciones = ['Primero', 'Segundo', 'Tercero'];

  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hola')),

      floatingActionButton: (FloatingActionButton(
          child: Icon(Icons.add),
        onPressed: () {
        setState(() {

          opciones.add('Element $cont');
          cont++;
        });
      })),

      body: ListView(
        children: _crearItemsCorto(),

      ),
    );
  }

  List<Widget> _listaItemsPrueba(List<dynamic> data, BuildContext) {
    final List<Widget> lista = [];
    data.forEach((opcion) {
      final tempWidget = ListTile(
          title: Text(opcion['texto']),
          leading: Icon(opcion['icon']),
          trailing: Icon(Icons.navigate_next, color: Colors.blue),
          onTap: (){
          Navigator.pushNamed(BuildContext, opcion[AvatarPage]);
          },
      );
      lista.add(tempWidget);
      lista.add(const Divider());

    });

    return lista;
    /*return [ //Llista estatica
     ListTile(title: Text('Hola!')),
      Divider() ,
      ListTile(title: Text('Hola!')),
      Divider(),
      ListTile(title: Text('Hola!')),
    ];*/
  }

  Widget _miLista() {
    //print(menuProvider.opciones);
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          //print('builder');
          //print(snapshot.data);

          return ListView(
            children: _listaItemsPrueba(snapshot.data!, context),
          );
        });
  }

  List<Widget> _crearItems() {
    final lista = <Widget>[];
    opciones.forEach((element) {
      //Afegir TempWidget

      final tempWidget = ListTile(title: Text(element));
      lista.add(tempWidget);
      lista.add(Divider(
        //Modificar Divider
          height: 20, color: Colors.blue));
    });
    return lista;
  }
  List<Widget> _crearItemsCorto(){

    return opciones.map((item){
      return Column(
        children: [
          ListTile(
            title: Text('- ' + item),
            subtitle: Text('Subtitulo ' + item),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.skip_next),
            onTap: Navigator.push(context, AvatarPage()),
            //Presionar els ListTiles creats-
          ),
          Divider(height: 30, color: Colors.orangeAccent,),
        ],
      );
    }).toList();
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageTemp();
  State<StatefulWidget> AvatarPage() => AvatarPage();
  State<StatefulWidget> AlertPage() => AlertPage();
}

