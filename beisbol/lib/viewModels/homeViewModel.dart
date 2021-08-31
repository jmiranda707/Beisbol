import 'dart:math';

import 'package:beisbol/models/datosInningModel.dart';
import 'package:beisbol/models/equipoModel.dart';
import 'package:beisbol/models/libroModel.dart';
import 'package:beisbol/models/preguntaModel.dart';
import 'package:beisbol/models/preguntaModel.dart';
import 'package:beisbol/services/libros.dart';
import 'package:beisbol/services/preguntas.dart';
import 'package:beisbol/settings/persistence.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  Equipo _equipo1;
  Equipo _equipo2;
  DatosInning _datos;
  int _timeSelected = 90;
  int _inningSelected = 7;
  Libro _libro;
  List<Pregunta> _allPreguntas = [];
  Pregunta _preguntaSelected;

  final prefs = new PersistenceLocal();
  
  get preguntaSelected {
    return _preguntaSelected;
  }

  set preguntaSelected(Pregunta value) {
    this._preguntaSelected = value;
    notifyListeners();
  }

  get allPreguntas {
    return _allPreguntas;
  }

  set allPreguntas(List<Pregunta> value) {
    this._allPreguntas = value;
    notifyListeners();
  }

  get libro {
    return _libro;
  }

  set libro(Libro value) {
    this._libro = value;
    notifyListeners();
  }

  get inningSelected {
    return _inningSelected;
  }

  set inningSelected(int value) {
    this._inningSelected = value;
    notifyListeners();
  }

  get timeSelected {
    return _timeSelected;
  }

  set timeSelected(int value) {
    this._timeSelected = value;
    notifyListeners();
  }


  get equipo1 {
    return _equipo1;
  }

  set equipo1(Equipo value) {
    this._equipo1 = value;
    notifyListeners();
  }

  get datos {
    return _datos;
  }

  set datos(DatosInning value) {
    this._datos = value;
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

  goToResultado(BuildContext context){
     Libro libro = LibrosConst.libros.where((i) => i.idLibro == 1).first;// esto se debe seleccionar antes en un listado
     List<Pregunta> preguntas =  PreguntasConst.preguntas.where((i) => i.idLibro == libro.idLibro).toList();
     this.allPreguntas= preguntas;
     DatosInning datos = new DatosInning();
     datos.inningActual = 1;
     datos.outs = 0;
     datos.primeraBusy = false;
     datos.segundaBusy = false;
     datos.terceraBusy = false;
     datos.time = this.timeSelected;
     datos.totalInnings = this.inningSelected;
     datos.abriendoCerrando = 'abriendo'; //cerrando
     this.datos = datos;
     Navigator.pushNamed(context, 'resultadoPage');
  }

  goToPartido(BuildContext context){
     Navigator.pushReplacementNamed(context, 'partidoPage');
  }

  picharPregunta(){
    List<Pregunta> preguntas = this.allPreguntas;
    final random = new Random();
    Pregunta pregunta = preguntas[random.nextInt(preguntas.length)];
    this.preguntaSelected = pregunta;
  }

  respuestaIncorrecta(BuildContext context){

  }

  respuestaCorrecta(Pregunta pregunta, BuildContext context){
      int valorBateado = pregunta.valor;
       DatosInning datos = this.datos;
       Equipo equipo = (datos.abriendoCerrando=='abriendo')? this.equipo1: this.equipo2;
       //////Hombre en Tercera
      if(datos.terceraBusy){
        equipo.carreras= equipo.carreras + 1;
        datos.terceraBusy= false;
        this.datos= datos;
        //TODO: MOSTRAR UN GIF DE CELEBRACION
        // TODO: COLOCAR UN AUDIO
      }
      //////////hombre en segunda
      if(datos.segundaBusy){
         if(2 + valorBateado>= 4){
           equipo.carreras= equipo.carreras + 1;
           datos.segundaBusy = false;
           this.datos= datos;
           //TODO: MOSTRAR UN GIF DE CELEBRACION
        // TODO: COLOCAR UN AUDIO
         }
         else if(2+valorBateado == 3){
           datos.segundaBusy = false;
           datos.terceraBusy = true;
           this.datos= datos;
         }
      }
      ///////hombre en primera
      if(datos.primeraBusy){
        if(1 + valorBateado >= 4){
           equipo.carreras= equipo.carreras + 1;
           datos.primeraBusy = false;
           this.datos= datos;
           //TODO: MOSTRAR UN GIF DE CELEBRACION
        // TODO: COLOCAR UN AUDIO
         }
         else if(1 + valorBateado == 3){
           datos.primeraBusy = false;
           datos.terceraBusy = true;
           this.datos= datos;
         }
         else if(1 + valorBateado == 2){
           datos.primeraBusy = false;
           datos.segundaBusy = true;
           this.datos= datos;
         }
      }
      ////// bateador
         if(valorBateado >= 4){
           equipo.carreras= equipo.carreras + 1;
           this.datos= datos;
           //TODO: MOSTRAR UN GIF DE CELEBRACION
        // TODO: COLOCAR UN AUDIO
         }
         else if(valorBateado == 3){
           datos.terceraBusy = true;
           this.datos= datos;
         }
         else if(valorBateado == 2){
           datos.segundaBusy = true;
           this.datos= datos;
         }
         else if(valorBateado == 1){
           datos.primeraBusy = true;
           this.datos= datos;
         }
      ///eliminar la pregunta del listado
      List<Pregunta> preguntas= this.allPreguntas;
      preguntas.removeWhere((i) => i.idPregunta== pregunta.idPregunta);
      this.allPreguntas = preguntas;
  }

}