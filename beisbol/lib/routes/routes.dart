import 'package:beisbol/views/bienvenidaPage.dart';
import 'package:beisbol/views/seleccioneTeamPage.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder> {
    '/': (BuildContext context) => BienvenidaPage(),
    'seleccioneTeam': (BuildContext context) => SeleccioneTeamPage(),
  };
}