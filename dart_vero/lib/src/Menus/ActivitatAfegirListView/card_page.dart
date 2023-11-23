import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget{
 const CardPage({Key? key}) : super(key: key);

 @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage>{
  @override
Widget build (BuildContext context){
    return Scaffold(
    appBar: AppBar (
    title: const Text('Card Page'),
    ),

    body: ListView(
    children: [
      _miCard1(),
      _miCardImage(),

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
            leading: Icon( Icons.photo_album, color: Colors.blueAccent),
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
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.elsoldemexico.com.mx%2Fdoble-via%2Fvirales%2Ffiltran-supuesto-pack-de-rafa-polinesio-memes-los-polinesios-youtube-fotos-intimas-5407390.html&psig=AOvVaw3BuZ4Ww72xOvl-KhD7AV53&ust=1639554972705000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPCevbHo4vQCFQAAAAAdAAAAABAD'
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