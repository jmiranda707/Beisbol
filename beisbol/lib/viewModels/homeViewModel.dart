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
     this.equipo1 = equipo1;
      Navigator.pushNamed(context, 'seleccioneNombre');
  }

}