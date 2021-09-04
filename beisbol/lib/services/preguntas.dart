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
      pregunta: '''¿Cómo se describe a Tito en "Tito 1:4"?\n'''
      '''A) Creyente fiel y amado por Dios.\n'''
      '''B) Interprete de la ley.\n'''
      '''C) Varón prudente, integro, serio, sano e ireprochable.\n'''
      '''D) Verdadero hijo en la común fé.''',
      cita: 'Tito 1:4',
      respuesta: 'D',
      valor: 1,
    ),
    //triples
    Pregunta(
      idLibro: 1,
      idPregunta: 7,
      contestada: false,
      pregunta: '¿En qué ciudad había dejado Pablo a Tito?',
      cita: 'Tito 1:5',
      respuesta: 'En Creta',
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
      respuesta: '1. Corregir lo deficiente.\n 2. Establecer ancianos en cada ciudad.',
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

    //hits
    Pregunta(
      idPregunta: 11,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Cuál fue el medio utilizado por Dios para manifestar su palabra?\n'''
      '''A) Los sueños.\n'''
      '''B) La predicación.\n''',
      cita: 'Tito 1:3',
      respuesta: 'B',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 12,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Quién encomendó a Pablo la tarea de predicar el evangelio?\n'''
      '''A) Dios.\n'''
      '''B) Los Fariseos.\n''',
      cita: 'Tito 1:3',
      respuesta: 'A',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 13,
      idLibro: 1,
      contestada: false,
      pregunta: '''Un anciano debe ser irreprensible. ¿Verdadero o Falso?\n''',
      cita: 'Tito 1:6',
      respuesta: 'Verdadero',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 14,
      idLibro: 1,
      contestada: false,
      pregunta: '''Los ancianos de la iglesia pueden ser maridos de varias mujeres. ¿Verdadero o Falso?\n''',
      cita: 'Tito 1:6',
      respuesta: 'Falso',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 15,
      idLibro: 1,
      contestada: false,
      pregunta: '''Cada congregación debe tener solamente un Anciano en el liderazgo. ¿Verdadero o Falso?\n''',
      cita: 'Tito 1:5',
      respuesta: 'Falso',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 16,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Quién era el responsable de establecer los ancianos y obispos, en cada ciudad de Creta?\n'''
      '''A) Zenas.\n'''
      '''B) Tito.\n''',
      cita: 'Tito 1:5',
      respuesta: 'B',
      valor: 1,
    ),
     Pregunta(
      idPregunta: 17,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Es correcto nombrar como Obispo a alguien soberbio?\n''',
      cita: 'Tito 1:7',
      respuesta: 'NO',
      valor: 1,
    ),
     Pregunta(
      idPregunta: 18,
      idLibro: 1,
      contestada: false,
      pregunta: '''Un Obispo debe ser:\n'''
      '''A) Hospedador y santo\n'''
      '''B) Dado al vino y pendenciero\n'''
      '''C) Dueño de sí mismo y sobrio\n'''
      '''D) Todas las anteriores\n'''
      '''E) A Y C\n''',
      cita: 'Tito 1:7-8',
      respuesta: 'E',
      valor: 2,
    ),
    Pregunta(
      idPregunta: 19,
      idLibro: 1,
      contestada: false,
      pregunta: '''Un Obispo NO puede ser:\n'''
      '''A) Hospedador\n'''
      '''B) Pendenciero\n''',
      cita: 'Tito 1:7',
      respuesta: 'B',
      valor: 2,
    ),
    Pregunta(
      idPregunta: 20,
      idLibro: 1,
      contestada: false,
      pregunta: '''Según el Capítulo 1, Versículo 10... en la iglesia no sólo habían buenos creyentes; Tambien habian algunos que eran:\n'''
      '''A) Fanáticos\n'''
      '''B) Contumases\n''',
      cita: 'Tito 1:10',
      respuesta: 'B',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 21,
      idLibro: 1,
      contestada: false,
      pregunta: '''Según Tito 1:10... en la iglesia habian algunos que eran:\n'''
      '''A) Engañadores y habladores de vanidades\n'''
      '''B) Irreprensibles y calumniadores\n''',
      cita: 'Tito 1:10',
      respuesta: 'A',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 22,
      idLibro: 1,
      contestada: false,
      pregunta: '''Según Tito 1:10... en la iglesia habian algunos que eran:\n'''
      '''A) Engañadores y habladores de vanidades\n'''
      '''B) Irreprensibles y calumniadores\n''',
      cita: 'Tito 1:10',
      respuesta: 'A',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 23,
      idLibro: 1,
      contestada: false,
      pregunta: '''Pablo quería tapar la boca a algunos miembros de la iglesia en Creta. ¿Verdadero o falso?''',
      cita: 'Tito 1:11',
      respuesta: 'Verdadero',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 24,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿De qué manera debía Tito reprender a algunas personas de su congregación?''',
      cita: 'Tito 1:13',
      respuesta: 'Duramente',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 25,
      idLibro: 1,
      contestada: false,
      pregunta: '''Para los puros todo es: _____________ ?''',
      cita: 'Tito 1:15',
      respuesta: 'Puro',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 26,
      idLibro: 1,
      contestada: false,
      pregunta: '''Para los puros todo es: _____________ ?''',
      cita: 'Tito 1:15',
      respuesta: 'Puro',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 27,
      idLibro: 1,
      contestada: false,
      pregunta: '''Para los corrompidos e incrédulos (complete):\n'''
      '''A) Dios es mentiroso\n'''
      '''B) Ésta vida es pa gozarla\n'''
      '''C) Nada les es puro\n''',
      cita: 'Tito 1:15',
      respuesta: 'C',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 28,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Cómo llama Pablo a aquellos que profesan conocer a Dios, pero que lo niegan con sus hechos?''',
      cita: 'Tito 1:15-16',
      respuesta: 'Corrompidos e incrédulos.',
      valor: 2,
    ),
    Pregunta(
      idPregunta: 29,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Quiénes son descritos como "Malas Bestias", por su propio profeta?''',
      cita: 'Tito 1:12',
      respuesta: 'Los Cretenses',
      valor: 2,
    ),
    Pregunta(
      idPregunta: 30,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Cómo describe Pablo el testimonio del profeta que habló mal de los habitantes de Creta?''',
      cita: 'Tito 1:13',
      respuesta: 'Como verdadero',
      valor: 2,
    ),
    Pregunta(
      idPregunta: 31,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Cómo tienen la mente y la conciencia los incrédulos?''',
      cita: 'Tito 1:15',
      respuesta: 'Corrompida',
      valor: 2,
    ),
    Pregunta(
      idPregunta: 32,
      idLibro: 1,
      contestada: false,
      pregunta: '''Mencione 2 características que deben tener los ancianos, según Tito 2:2''',
      cita: 'Tito 2:2',
      respuesta: 'Sobrios, serios, prudentes, sanos en la fe, en el amor, en la paciencia',
      valor: 2,
    ),
     Pregunta(
      idPregunta: 33,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Porqué las mujeres jovenes deben cuidar su casa, ser castas y prudentes?''',
      cita: 'Tito 2:5',
      respuesta: 'Para que la palabra no sea blasfemada',
      valor: 3,
    ),
    Pregunta(
      idPregunta: 34,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Cuál debía ser la exhortación de Tito para con los jovenes?''',
      cita: 'Tito 2:6',
      respuesta: 'A ser prudentes',
      valor: 2,
    ),
    Pregunta(
      idPregunta: 35,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Cuál debía ser la exhortación de Tito para con los jovenes?''',
      cita: 'Tito 2:6',
      respuesta: 'A ser prudentes',
      valor: 2,
    ),
    Pregunta(
      idPregunta: 36,
      idLibro: 1,
      contestada: false,
      pregunta: '''Complete: Aguardando la _______ bienaventurada y la manifestación de nuestro gran _________ y _________ Jesucristo.''',
      cita: 'Tito 2:13',
      respuesta: 'Esperanza, Dios, Salvador',
      valor: 2,
    ),

  ];
}
