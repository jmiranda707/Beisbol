import 'package:beisbol/views/bienvenidaPage.dart';
import 'package:beisbol/views/comodinesPage.dart';
import 'package:beisbol/views/configuracionPage.dart';
import 'package:beisbol/views/finJuegoPage.dart';
import 'package:beisbol/views/partidoPage.dart';
import 'package:beisbol/views/resultadoPage.dart';
import 'package:beisbol/views/seleccioneLogo2Page.dart';
import 'package:beisbol/views/seleccioneNombre2Page.dart';
import 'package:beisbol/views/seleccioneNombrePage.dart';
import 'package:beisbol/views/seleccioneLogoPage.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder> {
    '/': (BuildContext context) => BienvenidaPage(),
    'seleccioneLogo': (BuildContext context) => SeleccioneLogoPage(),
    'seleccioneNombre': (BuildContext context) => SeleccioneNombrePage(),
    'seleccioneLogo2': (BuildContext context) => SeleccioneLogo2Page(),
    'seleccioneNombre2': (BuildContext context) => SeleccioneNombre2Page(),
    'configuracionPage': (BuildContext context) => ConfiguracionPage(),
    'resultadoPage': (BuildContext context) => ResultadoPage(),
    'partidoPage': (BuildContext context) => PartidoPage(),
    'finPage': (BuildContext context) => FinPage(),
    'comodinesPage': (BuildContext context) => ComodinesPage(),
    
  };
}