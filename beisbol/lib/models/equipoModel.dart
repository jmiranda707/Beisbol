import 'package:flutter/material.dart';

class Equipo {
    Equipo({
    this.nombre,
    this.carreras,
    this.color,
    this.idEquipo,
    this.logoImage,
    this.teamNumb,
    this.cambiarBateador,
    this.cambiarPregunta,
    this.consultarBiblia,
    this.consultarEquipo
  });
 
   String nombre;
   int idEquipo;
   String logoImage;
   int teamNumb;
   Color color;
   int carreras;
   int consultarEquipo;
   int consultarBiblia;
   int cambiarPregunta;
   int cambiarBateador;

}