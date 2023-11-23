
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget{
 CardPage{(Key? key);} : super(key: key);

 @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage>{
  @override
Widget build (BuildContext context){
    return Scaffold(
    appBar: (
    title: Text('Card Page'),

    ),
    body: ListView(
    children: [
      _miCard1(),
      SizedBox(
      height: 30.0,
    ),
    _miCardImage(),
    ],
    ),
    );
  }

  Widget _miCard1(){
    return Card(
      elevation: 3.0,
      shadowColor: Colors.blue,
      child: Column(
        children: [
          ListTile(
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text('Subtitulo descripcion'),
            leading: Icon(Icons.add, color: Colors.blueAccent),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: (){}, child: Text('Cancelar')),
            TextButton(onPressed: (){}, child: Text('Ok')),
          ],
        ),
      ]),
    );
  }

  Widget _miCardImage(){
    return Card(
      child: Column(
        children: [
          Image(image: NetworkImage('Foto: '),
          ),
         FadeInImage(
           placeholder: AssetImage('assets/jar-loading.gif'),
           image: NetworkImage(

           ),
         ),
         Container(
           padding: EdgeInsets.all(10.0),
           child: Text('Text prova'),
         ),
         Text('Text de prova'),
        ],
      ),
    );

  }
}