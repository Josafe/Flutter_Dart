import 'package:dart_vero/src/Menus/ActivitatAfegirListView/card_page.dart';
import 'package:flutter/cupertino.dart';

import 'alert_page.dart';
import 'avatar_page.dart';
import 'milista.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
      '/': (BuildContext context) => MyHomePage(),
      'alert': (BuildContext context) =>AlertPage(), //nombre ruta = que en . json
      'avatar': (BuildContext context) => AvatarPage(),
      'card': (BuildContext context) => CardPage(),
  };
}