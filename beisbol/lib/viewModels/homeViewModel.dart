import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:beisbol/models/datosInningModel.dart';
import 'package:beisbol/models/equipoModel.dart';
import 'package:beisbol/models/libroModel.dart';
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
  bool _showPregunta = false;
  String _mensajeAnimado = '';
  List<String> _mensajeCorrecto = [];

  final prefs = new PersistenceLocal();
  
  get mensajeCorrecto {
    return _mensajeCorrecto;
  }

  set mensajeCorrecto(List<String> value) {
    this._mensajeCorrecto = value;
    notifyListeners();
  }

  get mensajeAnimado {
    return _mensajeAnimado;
  }

  set mensajeAnimado(String value) {
    this._mensajeAnimado = value;
    notifyListeners();
  }

  get showPregunta {
    return _showPregunta;
  }

  set showPregunta(bool value) {
    this._showPregunta = value;
    notifyListeners();
  }

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

  goToConfiguracion(BuildContext context,){
     
     Navigator.pushNamed(context, 'configuracionPage');
  }
  goToComodines(BuildContext context, String nombre,){
     Equipo equipo= this.equipo2;
     equipo.nombre = nombre;
     this.equipo2 = equipo;
     Navigator.pushNamed(context, 'comodinesPage');
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
     this.equipo1.carreras= 0;
     this.equipo2.carreras=0;
     Navigator.pushNamed(context, 'resultadoPage');
  }

  goToPartido(BuildContext context){
     Navigator.pushReplacementNamed(context, 'partidoPage');
  }

  picharPregunta(BuildContext context){
    List<Pregunta> preguntas = this.allPreguntas;
    if(preguntas.length>0){
       final random = new Random();
    Pregunta pregunta = preguntas[random.nextInt(preguntas.length)];
    this.preguntaSelected = pregunta;
    this.showPregunta= true;
    }
    else{
      Navigator.pushNamed(context, 'finPage');
    }
    
  }

   timeOver(BuildContext context){
     this.respuestaIncorrecta(context);
   }

   Future<void> respuestaIncorrecta(BuildContext context)async{
     this.showPregunta= false;
     DatosInning datos= this.datos;
      datos.outs= datos.outs + 1;
     this.mensajeAnimado = '${datos.outs} OUTS!!';
     final player= AudioCache();
     await player.play('audios/burla.mp3',);
     await Future.delayed( Duration(seconds: 6), () {
           this.mensajeAnimado = '';
      });
      
      datos.time= this.timeSelected;
      if(datos.outs>=3){
        if(datos.inningActual>=datos.totalInnings && datos.abriendoCerrando=='cerrando' && equipo1.carreras != equipo2.carreras){
          Navigator.pushNamed(context, 'finPage');
        }
        else if(datos.inningActual>=datos.totalInnings && datos.abriendoCerrando=='abriendo' && equipo1.carreras < equipo2.carreras){
          Navigator.pushNamed(context, 'finPage');
        }
        else{
         
        //reinicio los contadores
        datos.outs=0;
        if(datos.abriendoCerrando=='abriendo'){
          datos.abriendoCerrando='cerrando';
        }else{
          datos.abriendoCerrando='abriendo';
          datos.inningActual = datos.inningActual + 1;
        }
        datos.primeraBusy= false;
        datos.segundaBusy= false;
        datos.terceraBusy= false;
        
        Navigator.pushReplacementNamed(context, 'resultadoPage');
        
        
        }
        
      }
      else{
        this.datos= datos;
      }
   }

  respuestaCorrecta(Pregunta pregunta, BuildContext context) async{
      this.showPregunta= false;
      int valorBateado = pregunta.valor;
       DatosInning datos = this.datos;
        int seconds= 10;
      final player= AudioCache();
     await player.play('audios/aplausosCortos.mp3',);
       Equipo equipo = (datos.abriendoCerrando=='abriendo')? this.equipo1: this.equipo2;
       //////Hombre en Tercera
      if(datos.terceraBusy){
        equipo.carreras= equipo.carreras + 1;
        datos.terceraBusy= false;
        this.datos= datos;
      }
      //////////hombre en segunda
      if(datos.segundaBusy){
         if(2 + valorBateado>= 4){
           equipo.carreras= equipo.carreras + 1;
           datos.segundaBusy = false;
           this.datos= datos;
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


       if(valorBateado==4){
         List<String> mensajes= [];
         mensajes.add('¡¡Que Batazo!!');
         mensajes.add('es un...');
         mensajes.add('¡HOME RUN!');
         mensajes.add('¡HOME RUN!');
         mensajes.add('${this.equipo1.carreras} - ${this.equipo2.carreras}');
         this.mensajeCorrecto = mensajes;
         seconds= 14;
       }
       if(valorBateado==3){
         List<String> mensajes= [];
         mensajes.add('¡¡WAOOH!!');
         mensajes.add('llegó hasta tercera...');
         mensajes.add('¡TRIPLE!');
         this.mensajeCorrecto = mensajes;

         seconds= 10;
       }
       if(valorBateado==2){
         List<String> mensajes= [];
         mensajes.add('¡¡Que Batazo!!');
         mensajes.add('pero es un...');
         mensajes.add('¡DOBLE!');
         this.mensajeCorrecto = mensajes;
         seconds= 10;
       }
       if(valorBateado==1){
         List<String> mensajes= [];
         mensajes.add('HIT!!');
         mensajes.add('HIT...');
         mensajes.add('¡¡HIT!!');
         this.mensajeCorrecto = mensajes;
         seconds= 10;
       }
       await Future.delayed( Duration(seconds: seconds), () {
       this.mensajeCorrecto = [];
      });
       (datos.abriendoCerrando=='abriendo')? this.equipo1= equipo: this.equipo2 = equipo;
       if(datos.inningActual>=datos.totalInnings && datos.abriendoCerrando=='cerrando' && equipo1.carreras < equipo2.carreras){
          Navigator.pushNamed(context, 'finPage');
        }
  }

}