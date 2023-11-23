import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
         child: ListView(
           padding: EdgeInsets.zero,
          children: <Widget> [
            UserAccountsDrawerHeader(
                accountName: Text('Joan Sabater Ferré'),
                accountEmail: Text('joafer.alu@iesbenigaslo.es'),
                currentAccountPicture: CircleAvatar(
                child: ClipOval(
                child: Image.network(
                    'https://www.mundocuentas.com/wp-content/uploads/2020/11/gmail-logo-mundocuentas.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.nuevatribuna.es/media/nuevatribuna/images/2020/01/25/2020012517431414812.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile( //Llista de icones / barres menu
              leading: Icon(Icons.timer_outlined),
              title: Text('Timer'),
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
              leading: Icon(Icons.card_travel_outlined),
              title: Text('Shop'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.circle_outlined),
              title: Text('Profile'),
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
              title: Text('Log Out'),
              onTap: () => null,
            ),
          ],
       ),
    );
  }
}

