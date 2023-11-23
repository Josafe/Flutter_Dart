import 'package:dart_vero/src/Menus/MenuAfegirListView/menu_providers.dart';
import 'package:dart_vero/src/WidgetsDart/Hero/src/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget lamevaLlista(){
  return FutureBuilder(
      future: menuProvider.cargarData(),
  initialData: [],
  builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
    print("builder");
    return ListView(
    children: _llista(snapshot.data!, context),
  );
  });
}

List<Widget> _llista(List<dynamic> data, BuildContext context){

  final List<Widget> lista = [];
  data.forEach((opcion) {
    final tempWidget = ListTile(
      title: Text(opcion['Text1']
      ),
      onTap: (){
       Navigator.pushNamed(context, opcion('ruta'));      },
  );
    lista.add(tempWidget);
    lista.add(const Divider());
});
  return lista;
}

class Json extends StatelessWidget{
@override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text('Json menu'),
      backgroundColor: Colors.brown,
    ),

    body: lamevaLlista(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.fifteen_mp_outlined,
          color: Colors.orangeAccent,
        ),
        onPressed: (){
          MaterialPageRoute(builder: (context) => HomePage());
        },
    ),
  );
}
}