import 'package:dart_vero/src/Menus/Act4Vero/aboutPage.dart';
import 'package:dart_vero/src/Menus/Act4Vero/errorPage.dart';
import 'package:dart_vero/src/Menus/Act4Vero/servicesPage.dart';
import 'package:dart_vero/src/Menus/ActivitatAfegirListView/card_page.dart';
import 'package:dart_vero/src/WidgetsDart/Hero/src/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_vero/src/pages/animated_container.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
      '/': (BuildContext context) => HomePage(),
      'error': (BuildContext context) =>errorPage(), //nombre ruta = que en . json
      'services': (BuildContext context) => servicesPage(),
      'about': (BuildContext context) => aboutPage(),
      'animated': (BuildContext context) => AnimatedContainerPage(),

  };
}