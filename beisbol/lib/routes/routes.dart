import 'package:beisbol/views/bienvenidaPage.dart';
import 'package:beisbol/views/seleccioneNombrePage.dart';
import 'package:beisbol/views/seleccioneLogoPage.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder> {
    '/': (BuildContext context) => BienvenidaPage(),
    'seleccioneLogo': (BuildContext context) => SeleccioneLogoPage(),
    'seleccioneNombre': (BuildContext context) => SeleccioneNombrePage(),
  };
}