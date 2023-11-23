import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proyecto_paco/src/pages/Afegir_Imagens.dart';
import 'package:proyecto_paco/src/utils/creaDrawer.dart';

class GalleryPage extends StatefulWidget {
  GalleryPage({Key? key}) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  //List<int> _listaNumeros = [1, 2, 3, 4, 5];
  ScrollController _scrollController = new ScrollController();
  int _ultimoItem = 0;
  List<int> _listaNumeros = [];
  bool _isLoading = false;
  //List<int?> paco1 = List.generate(0, (index) => null);

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //_agregar10();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  /*
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería'),
        backgroundColor: Color(0XFF5F72E6),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 300,
          color: Colors.green,
        ),
      ),
      drawer: buildDrawer(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AfegirImagens()));
        },
      ),
    );
  }
  */
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoading(),
        ],
      ),
      drawer: buildDrawer(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AfegirImagens()));
        },
      ),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNumeros[index];
          return FadeInImage(
              placeholder: AssetImage('assets/espera.gif'),
              image:
                  NetworkImage('https://picsum.photos/500/300/?image=$imagen'));
        });
    //Encargado de renderizar todos los elementos que tengan que ser cargados
  }

  _agregar10() {
    for (int i = 1; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {});
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    return new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _agregar10();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}
