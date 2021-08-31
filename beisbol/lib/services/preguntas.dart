import 'package:beisbol/models/preguntaModel.dart';

class PreguntasConst {
  PreguntasConst._();

  static List<Pregunta> preguntas = [
    //********************************* TITO ************************************************
    //hits
    Pregunta(
      idLibro: 1,
      idPregunta: 1,
      contestada: false,
      pregunta: '¿Quién escribió la carta de Tito?',
      cita: 'Tito 1:1',
      valor: 1,
      respuesta: 'Pablo'
    ),
    Pregunta(
      idLibro: 1,
      idPregunta: 2,
      contestada: false,
      pregunta: '¿Qué nos prometió Dios desde antes de los siglos?',
      respuesta: 'Vida eterna',
      valor: 1,
      cita: 'Tito 1:2',
    ),
    Pregunta(
      idLibro: 1,
      idPregunta: 3,
      contestada: false,
      pregunta: '¿Qué manifestó Dios a su tiempo?',
      cita: 'Tito 1:3',
      respuesta: 'Su palabra',
      valor: 1,
    ),
    Pregunta(
      idLibro: 1,
      idPregunta: 4,
      contestada: false,
      pregunta: '¿Qué se dice en Tito 1:2 referente a lo que Dios "NO hace"?',
      cita: 'Tito 1:2',
      respuesta: 'Mentir',
      valor: 1,
    ),
    //dobles
    Pregunta(
      idLibro: 1,
      idPregunta: 5,
      contestada: false,
      pregunta: '¿Desde cuándo prometió Dios la esperanza de la vida eterna?',
      cita: 'Tito 1:2',
      respuesta: 'Desde antes del principio de los siglos',
      valor: 2,
    ),
    Pregunta(
      idLibro: 1,
      idPregunta: 6,
      contestada: false,
      pregunta: '''¿Cómo se describe a Tito en "Tito 1:4"?/n'''
      '''A) Creyente fiel y amado por Dios./n'''
      '''B) Interprete de la ley./n'''
      '''C) Varón prudente, integro, serio, sano e ireprochable./n'''
      '''D) Verdadero hijo en la común fé.''',
      cita: 'Tito 1:4',
      respuesta: 'D',
      valor: 2,
    ),
    //triples
    Pregunta(
      idLibro: 1,
      idPregunta: 7,
      contestada: false,
      pregunta: '¿En qué ciudad había dejado Pablo a Tito?',
      cita: 'Tito 1:5',
      respuesta: 'en Creta',
      valor: 3,
    ),
    Pregunta(
      idLibro: 1,
      idPregunta: 8,
      contestada: false,
      pregunta: 'Diga 5 requisitos para ser Obispo.',
      cita: 'Tito 1:6-9',
      respuesta: '---',
      valor: 3,
    ),
    //home run
    Pregunta(
      idLibro: 1,
      idPregunta: 9,
      contestada: false,
      pregunta: 'Diga las 2 razones por la cual Pablo dejó a Tito en Creta',
      cita: 'Tito 1:5',
      respuesta: '1. Corregir lo deficiente./n 2. Establecer ancianos en cada ciudad.',
      valor: 4,
    ),
    Pregunta(
      idLibro: 1,
      idPregunta: 10,
      contestada: false,
      pregunta: 'Diga 7 requisitos para ser Obispo.',
      cita: 'Tito 1:6-9',
      respuesta: '---',
      valor: 4,
    ),
  ];
}
