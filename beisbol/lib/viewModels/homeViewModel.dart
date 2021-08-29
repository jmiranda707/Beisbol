import 'package:beisbol/models/equipoModel.dart';
import 'package:beisbol/settings/persistence.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  Equipo _equipo1;
  Equipo _equipo2;

  final prefs = new PersistenceLocal();

  get equipo1 {
    return _equipo1;
  }

  set equipo1(Equipo value) {
    this._equipo1 = value;
    notifyListeners();
  }

  get equipo2 {
    return _equipo2;
  }

  set equipo2(Equipo value) {
    this._equipo2 = value;
    notifyListeners();
  }

  goToNombreEquipo1(BuildContext context, String logoImage, Color color){
     Equipo equipo1= new Equipo();
     equipo1.logoImage= logoImage;
     equipo1.color = color;
     equipo1.teamNumb = 1;
     equipo1.carreras= 0;
     equipo1.idEquipo= 1;
     this.equipo1 = equipo1;
      Navigator.pushNamed(context, 'seleccioneNombre');
  }

  goToLogoEquipo2(BuildContext context, String nombre,){
     Equipo equipo= this.equipo1;
     equipo.nombre = nombre;
     this.equipo1 = equipo;
      Navigator.pushNamed(context, 'seleccioneLogo2');
  }

  goToNombreEquipo2(BuildContext context, String logoImage, Color color){
     Equipo equipo2= new Equipo();
     equipo2.logoImage= logoImage;
     equipo2.color = color;
     equipo2.teamNumb = 2;
     equipo2.idEquipo= 2;
     equipo2.carreras=0;
     this.equipo2 = equipo2;
      Navigator.pushNamed(context, 'seleccioneNombre2');
  }

  goToConfiguracion(BuildContext context, String nombre,){
     Equipo equipo= this.equipo2;
     equipo.nombre = nombre;
     this.equipo2 = equipo;
     Navigator.pushNamed(context, 'configuracionPage');
  }

}