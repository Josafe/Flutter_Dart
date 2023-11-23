import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
        padding: EdgeInsets.zero,
          children: [
            ListTile( //Llista de icones / barres menu
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () => null,
              trailing: Container(
                width: 20,
                height: 20,
                child: Text('8', style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Friends'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Request'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuracion'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Documentos'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sortir'),
              onTap: () => null,
            ),
          ],
       ),
    );
  }
}

