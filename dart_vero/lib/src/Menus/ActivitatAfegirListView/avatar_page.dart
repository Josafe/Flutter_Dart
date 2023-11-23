import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar Page"),
        actions: [
          Container(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://estaticos-cdn.elperiodico.com/clip/76faba3d-d8f9-4a8c-8a56-55b132f8947e_alta-libre-aspect-ratio_default_0.jpg'),
          ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('RN'),
              backgroundColor: Colors.yellow[10],
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://cdn.themedizine.com/2020/10/image-5-1200x675.jpeg'),
          placeholder: AssetImage(''),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),

    );
  }
}