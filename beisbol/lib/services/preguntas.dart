import 'package:beisbol/models/preguntaModel.dart';

class PreguntasConst {
  PreguntasConst._();

  static List<Pregunta> preguntas = [
    //********************************* TITO ************************************************
    //hits
    /*Pregunta(
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
      valor: 1,
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
      pregunta: '''¿Porqué las mujeres jovenes deben ser castas y prudentes?''',
      cita: 'Tito 2:5',
      respuesta: 'Para que la palabra no sea blasfemada',
      valor: 2,
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
      pregunta: '''¿Debía Tito exhortar a los jovenes? Verdadero o Falso''',
      cita: 'Tito 2:6',
      respuesta: 'Verdadero',
      valor: 1,
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
    Pregunta(
      idPregunta: 37,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Cuántos capítulos tiene el libro de Tito?''',
      cita: 'Tito',
      respuesta: '3',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 38,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Cuántos versículos tiene el libro de Tito?''',
      cita: 'Tito',
      respuesta: '46',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 39,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Qué cosas eran capaces de enseñar algunos miembros de la iglesia, a cambio de ganancias deshonestas?''',
      cita: 'Tito 1:11',
      respuesta: 'Lo que no conviene',
      valor: 3,
    ),
    Pregunta(
      idPregunta: 40,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Qué debía hacer Tito con los falsos maestros de la iglesia y para qué?''',
      cita: 'Tito 1:13',
      respuesta: 'reprenderlos para que sean sanos en la fe.',
      valor: 3,
    ),
     Pregunta(
      idPregunta: 41,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿A qué cosas NO debía prestar atención Tito?''',
      cita: 'Tito 1:14',
      respuesta: 'Fábulas judaicas y mandamientos de hombres que se apartan de la verdad',
      valor: 3,
    ),
    Pregunta(
      idPregunta: 42,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿A qué cosas NO debía prestar atención Tito?''',
      cita: 'Tito 1:14',
      respuesta: 'Fábulas judaicas y mandamientos de hombres que se apartan de la verdad',
      valor: 3,
    ),
    Pregunta(
      idPregunta: 43,
      idLibro: 1,
      contestada: false,
      pregunta: '''Un creyente verdadero debe hablar lo que esté de acuerdo con __________ ?''',
      cita: 'Tito 2:1',
      respuesta: 'La sana doctrina',
      valor: 2,
    ),
    Pregunta(
      idPregunta: 44,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Cómo debía presentarse Tito ante los jovenes para exhortarlos?''',
      cita: 'Tito 2:7',
      respuesta: 'como ejemplo de buenas obras en todo',
      valor: 3,
    ),
    Pregunta(
      idPregunta: 45,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿A cuáles 2 cosas nos enseña la gracia de Dios que debemos renunciar?''',
      cita: 'Tito 2:11-12',
      respuesta: 'Impiedad y deseos mundanos',
      valor: 3,
    ),
    Pregunta(
      idPregunta: 46,
      idLibro: 1,
      contestada: false,
      pregunta: '''Explique en sus propias palabras y según Tito 3:2-3, ¿porqué debemos ser amables y mansos con todos los hombres?''',
      cita: 'Tito 3:2-3',
      respuesta: 'Porque nosotros tambien eramos en otro tiempo... como ellos',
      valor: 3,
    ),
    Pregunta(
      idPregunta: 47,
      idLibro: 1,
      contestada: false,
      pregunta: '''Mencione 5 características que describe Pablo de algunos cristianos, ANTES de manifestarse la bondad de Dios en nosotros.''',
      cita: 'Tito 3:3',
      respuesta: 'Porque nosotros tambien éramos en otro tiempo... como ellos',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 48,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Con cuáles 2 palabras describe Pablo sus propias enseñanzas en ésta carta?''',
      cita: 'Tito 3:8',
      respuesta: 'Buenas y útiles.',
      valor: 3,
    ),
    Pregunta(
      idPregunta: 49,
      idLibro: 1,
      contestada: false,
      pregunta: '''Explique con sus propias palabras y según Tito 1:10-11, ¿Porqué razón Pablo especifica una lista de atributos y capacidades que debe cumplir un miembro de la iglesia, para poder ser nombrado ANCIANO u OBISPO?''',
      cita: 'Tito 1:10-11',
      respuesta: 'Habian falsos creyentes y maestros introducidos en la iglesia',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 50,
      idLibro: 1,
      contestada: false,
      pregunta: '''Diga las 3 características de los cretenses, según su propio profeta.''',
      cita: 'Tito 1:12',
      respuesta: 'Mentirosos, malas bestias, glotones ociosos',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 51,
      idLibro: 1,
      contestada: false,
      pregunta: '''Nombre 5 características del corrompido e incrédulo''',
      cita: 'Tito 1:15-16',
      respuesta: '---',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 52,
      idLibro: 1,
      contestada: false,
      pregunta: '''Nombre 3 características o ejemplos de conducta que debía presentar Tito, como buen maestro.''',
      cita: 'Tito 2:7-8',
      respuesta: '---',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 53,
      idLibro: 1,
      contestada: false,
      pregunta: '''Diga por cuáles 2 razones Tito y cualquier otro creyente deben dar testimonio y ejemplo de buenas obras antes, durante y después de su enseñanza.''',
      cita: 'Tito 2:8',
      respuesta: 'el adversario se averguence y no tenga nada malo que decir',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 54,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿De qué manera debemos vivir en éste siglo?''',
      cita: 'Tito 2:12',
      respuesta: 'sobria, justa y piadosamente',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 55,
      idLibro: 1,
      contestada: false,
      pregunta: '''Diga un versículo del capítulo 1 de MEMORIA, con su cita bíblica.''',
      cita: 'Tito 1',
      respuesta: '---',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 56,
      idLibro: 1,
      contestada: false,
      pregunta: '''Diga un versículo del capítulo 2 de MEMORIA, con su cita bíblica.''',
      cita: 'Tito 2',
      respuesta: '---',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 57,
      idLibro: 1,
      contestada: false,
      pregunta: '''Diga un versículo del capítulo 3 de MEMORIA, con su cita bíblica.''',
      cita: 'Tito 3',
      respuesta: '---',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 58,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Porqué Pablo anima a Tito a "insistir" con firmeza en las enseñanzas recibidas en ésta carta?''',
      cita: 'Tito 3:8',
      respuesta: 'Para que los que creen en Dios se ocupen en buenas obras.',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 59,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Porqué Pablo anima a Tito a "insistir" con firmeza en las enseñanzas recibidas en ésta carta?''',
      cita: 'Tito 3:8',
      respuesta: 'Para que los que creen en Dios se ocupen en buenas obras.',
      valor: 4,
    ),
    Pregunta(
      idPregunta: 60,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Cuál de las siguientes NO puede ser una característica de las ancianas de la iglesia?\n'''
      '''A) No esclavas del vino\n'''
      '''B) No sujetas a su marido\n'''
      '''C) Maestras del bien\n''',
      cita: 'Tito 2:3',
      respuesta: 'B.',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 61,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Quién tiene la responsabilidad de enseñar a las mujeres jovenes, según Pablo?''',
      cita: 'Tito 2:3-4',
      respuesta: 'Las ancianas',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 62,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿A quién debe amar las mujeres jovenes?\n'''
      '''A) A su marido\n'''
      '''B) A sus hijos\n'''
      '''C) A Y B\n'''
      '''D) Solamente al Señor Jesús\n''',
      cita: 'Tito 2:4',
      respuesta: 'C',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 63,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿A quién debe sujetarse las mujeres jovenes?\n'''
      '''A) A su marido\n'''
      '''B) Al projimo\n'''
      '''C) A sus padres\n'''
      '''D) A Dios Padre\n''',
      cita: 'Tito 2:5',
      respuesta: 'A',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 64,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Porqué razón las mujeres jovenes deben cuidar de sus casas, marido e hijos?''',
      cita: 'Tito 2:5',
      respuesta: 'Para que la palabra de Dios no sea blasfemada',
      valor: 2,
    ),
    Pregunta(
      idPregunta: 65,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿Debe un siervo permanecer sujeto a sus amos? Verdadero o Falso''',
      cita: 'Tito 2:9',
      respuesta: 'Verdadero',
      valor: 1,
    ),
     Pregunta(
      idPregunta: 66,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿En qué tipo de cosas debe agradar un siervo a su amo?''',
      cita: 'Tito 2:9',
      respuesta: 'En todo',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 67,
      idLibro: 1,
      contestada: false,
      pregunta: '''Cristo nos redime de toda __________?''',
      cita: 'Tito 2:14',
      respuesta: 'Iniquidad',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 68,
      idLibro: 1,
      contestada: false,
      pregunta: '''Tito debía recordarle a la iglesia que tenían que permanecer sujetos a alguien. ¿A QUIÉNES tenían que obedecer y sujetarse?''',
      cita: 'Tito 3:1',
      respuesta: 'A los gobernantes y autoridades',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 69,
      idLibro: 1,
      contestada: false,
      pregunta: '''¿A quiénes no debían difamar los creyentes de Creta?\n'''
      '''A) A nadie\n'''
      '''B) A Pablo\n'''
      '''C) A Tito\n'''
      '''D) A los Ancianos\n''',
      cita: 'Tito 3:2',
      respuesta: 'A',
      valor: 1,
    ),
    Pregunta(
      idPregunta: 70,
      idLibro: 1,
      contestada: false,
      pregunta: '''Dios nos ha justificado por:\n'''
      '''A) Nuestras buenas obras\n'''
      '''B) Amor a nuestros padres\n'''
      '''C) Su gracia\n'''
      '''D) Mi arrepentimiento\n''',
      cita: 'Tito 3:2',
      respuesta: 'C',
      valor: 1,
    ),*/

    ///////////////////////////////////// COLOSENSES //////////////////////////////////
    Pregunta(
        idLibro: 2,
        idPregunta: 1,
        contestada: false,
        pregunta: '¿Quién escribió la carta a los Colosenses?',
        cita: 'Colosenses 1:1',
        valor: 1,
        respuesta: 'Pablo (y créditos a Timoteo)'),
    Pregunta(
        idLibro: 2,
        idPregunta: 2,
        contestada: false,
        pregunta:
            '¿De qué ciudad eran los santos y fieles a quienes Pablo dirige su carta?',
        cita: 'Colosenses 1:2',
        valor: 1,
        respuesta: 'Colosas'),
    Pregunta(
        idLibro: 2,
        idPregunta: 3,
        contestada: false,
        pregunta:
            '¿Cuáles son las 2 palabras que utiliza Pablo para describir a los colosenses?',
        cita: 'Colosenses 1:2',
        valor: 2,
        respuesta: 'santos y fieles'),
    Pregunta(
        idLibro: 2,
        idPregunta: 4,
        contestada: false,
        pregunta:
            'Complete el saludo de Pablo a los colosenses: _______ y _______ sean a vosotros, de ______ nuestro Padre y del _______ Jesucristo.',
        cita: 'Colosenses 1:2',
        valor: 2,
        respuesta: 'Gracia, Paz, Dios, Señor'),
    Pregunta(
        idLibro: 2,
        idPregunta: 5,
        contestada: false,
        pregunta: '¿Qué era lo que Pablo siempre hacia por los colosenses?',
        cita: 'Colosenses 1:3',
        valor: 1,
        respuesta: 'Orar'),
    Pregunta(
        idLibro: 2,
        idPregunta: 6,
        contestada: false,
        pregunta: '¿En quién tenían fe los colosenses?',
        cita: 'Colosenses 1:4',
        valor: 1,
        respuesta: 'Cristo Jesús'),
    Pregunta(
        idLibro: 2,
        idPregunta: 7,
        contestada: false,
        pregunta: '¿a quién amaban los colosenses?',
        cita: 'Colosenses 1:4',
        valor: 1,
        respuesta: 'a todos los santos'),
    Pregunta(
        idLibro: 2,
        idPregunta: 8,
        contestada: false,
        pregunta:
            '¿En dónde estaba guardada la esperanza de los colosenses, según Pablo?',
        cita: 'Colosenses 1:5',
        valor: 1,
        respuesta: 'en los cielos'),
    Pregunta(
        idLibro: 2,
        idPregunta: 9,
        contestada: false,
        pregunta: '¿Cómo describe Pablo, la palabra del evangelio?',
        cita: 'Colosenses 1:5',
        valor: 1,
        respuesta: 'verdadera'),
    Pregunta(
        idLibro: 2,
        idPregunta: 10,
        contestada: false,
        pregunta:
            '¿cuáles son las dos características o funciones del evangelio en cada persona, desde que ésta cree?',
        cita: 'Colosenses 1:6',
        valor: 2,
        respuesta: 'lleva fruto y crece'),
    Pregunta(
        idLibro: 2,
        idPregunta: 11,
        contestada: false,
        pregunta: '¿Hasta dónde ha llegado el evangelio, según Pablo?',
        cita: 'Colosenses 1:6',
        valor: 1,
        respuesta: 'a todo el mundo'),
    Pregunta(
        idLibro: 2,
        idPregunta: 12,
        contestada: false,
        pregunta:
            'Diga según colosenses 1:6, ¿desde cuándo comenzaron a crecer espiritualmente los colosenses?',
        cita: 'Colosenses 1:6',
        valor: 3,
        respuesta:
            'Desde el dia que oyeron y conocieron la gracia de Dios en verdad'),
    Pregunta(
        idLibro: 2,
        idPregunta: 13,
        contestada: false,
        pregunta:
            '¿A quién describe Pablo como un fiel ministro de Cristo para los colosenses?',
        cita: 'Colosenses 1:7',
        valor: 1,
        respuesta: 'Epafras'),
    Pregunta(
        idLibro: 2,
        idPregunta: 14,
        contestada: false,
        pregunta: '''Quién también nos ha declarado vuestro amor:\n'''
            '''a)	En verdad\n'''
            '''b)	Sincero\n'''
            '''c)	En el Espiritu\n'''
            '''d)	Fraternal\n''',
        cita: 'Colosenses 1:8',
        valor: 1,
        respuesta: 'C'),
    Pregunta(
        idLibro: 2,
        idPregunta: 15,
        contestada: false,
        pregunta:
            '¿Cuáles eran los 3 componentes (o propósitos) en la petición de Pablo por los colosenses, por la cual no podía cesar de orar?',
        cita: 'Colosenses 1:9',
        valor: 4,
        respuesta:
            'sean llenos del conocimiento de su voluntad, en sabiduría e inteligencia espiritual'),
    Pregunta(
        idLibro: 2,
        idPregunta: 16,
        contestada: false,
        pregunta:
            'Mencione 4 conductas o virtudes que Pablo esperaba ver en los colosenses, y por lo cual oraba sin cesar a Dios Padre.',
        cita: 'Colosenses 1:10-12',
        valor: 4,
        respuesta: 'buscar en biblia'),
    Pregunta(
        idLibro: 2,
        idPregunta: 17,
        contestada: false,
        pregunta: '''Dios nos ha hecho aptos para:\n'''
            '''a)	Toda buena obra en Cristo Jesus\n'''
            '''b)	Participar de la herencia de los santos en luz\n'''
            '''c)	Glorificar la preeminencia de Cristo\n'''
            '''d)	La redención por su sangre, el perdón de pecados\n''',
        cita: 'Colosenses 1:12',
        valor: 1,
        respuesta: 'b'),
    Pregunta(
        idLibro: 2,
        idPregunta: 18,
        contestada: false,
        pregunta: '¿de dónde nos ha librado Dios, y a dónde nos ha trasladado?',
        cita: 'Colosenses 1:13',
        valor: 2,
        respuesta: 'de la potestad de las tinieblas al Reino de su amado Hijo'),
    Pregunta(
        idLibro: 2,
        idPregunta: 19,
        contestada: false,
        pregunta:
            '¿cuáles son 2 de los beneficios que tenemos en Cristo Jesús?',
        cita: 'Colosenses 1:14',
        valor: 3,
        respuesta: 'redención y perdón de pecados'),
    Pregunta(
        idLibro: 2,
        idPregunta: 20,
        contestada: false,
        pregunta: '¿Quién es la imagen visible de Dios?',
        cita: 'Colosenses 1:13-15',
        valor: 1,
        respuesta: 'su Hijo jesus'),
    Pregunta(
        idLibro: 2,
        idPregunta: 21,
        contestada: false,
        pregunta:
            'Complete el versículo: Él es la __________ del Dios __________ el __________ de toda _________.',
        cita: 'Colosenses 1:15',
        valor: 4,
        respuesta: 'imagen, invisible, primogénito, creación'),
    Pregunta(
        idLibro: 2,
        idPregunta: 22,
        contestada: false,
        pregunta:
            'Complete el texto: En él fueron creadas _______ las cosas, las que hay en _____________ y las que hay en ________, _____________ e  ____________.',
        cita: 'Colosenses 1:16',
        valor: 4,
        respuesta: 'Todas, los cielos, la tierra, visibles, invisibles'),
    Pregunta(
        idLibro: 2,
        idPregunta: 23,
        contestada: false,
        pregunta:
            'Mencione 3 entidades espirituales, invisibles, que también fueron creadas por medio de Cristo y para Cristo.',
        cita: 'Colosenses 1:16',
        valor: 3,
        respuesta: 'tronos, dominios, principados, potestades'),
    Pregunta(
        idLibro: 2,
        idPregunta: 24,
        contestada: false,
        pregunta:
            'Complete: él es _________ de todas las cosas y todas las cosas en él _______.',
        cita: 'Colosenses 1:17',
        valor: 2,
        respuesta: 'antes, subsisten'),
    Pregunta(
        idLibro: 2,
        idPregunta: 25,
        contestada: false,
        pregunta:
            'Cristo y su Iglesia son comparados con el cuerpo humano, en donde Cristo representa __________ y la iglesia, que somos todos los creyentes, representa ___________.',
        cita: 'Colosenses 1:18',
        valor: 2,
        respuesta: 'cabeza, cuerpo'),
    Pregunta(
        idLibro: 2,
        idPregunta: 26,
        contestada: false,
        pregunta:
            'Complete: por cuanto ___________ al ___________ que en él habitase toda ___________ .',
        cita: 'Colosenses 1:19',
        valor: 3,
        respuesta: 'agradó, padre, plenitud'),
    Pregunta(
        idLibro: 2,
        idPregunta: 27,
        contestada: false,
        pregunta:
            '¿cuáles 2 cosas reconcilió el Padre consigo mismo, por medio de Jesucristo?',
        cita: 'Colosenses 1:20',
        valor: 2,
        respuesta: 'las que están en los cielos y las que están en la tierra'),
    Pregunta(
        idLibro: 2,
        idPregunta: 28,
        contestada: false,
        pregunta:
            '¿A través de qué ha hecho el Padre la paz con toda su creación?',
        cita: 'Colosenses 1:20',
        valor: 1,
        respuesta: 'la sangre de la cruz'),
    Pregunta(
        idLibro: 2,
        idPregunta: 29,
        contestada: false,
        pregunta:
            '¿Explique según la cita bíblica, cómo era nuestra condición en otro tiempo (mencione al menos 2 cosas), y qué ha pasado ahora?',
        cita: 'Colosenses 1:21',
        valor: 4,
        respuesta:
            'eramos extraños, enemigos en nuestra mente y hemos sido reconciliados'),
    Pregunta(
        idLibro: 2,
        idPregunta: 30,
        contestada: false,
        pregunta:
            '¿por medio de qué acto hemos sido reconciliados con Dios y para qué?',
        cita: 'Colosenses 1:22',
        valor: 4,
        respuesta:
            'por medio de la muerte de Cristo, para presentarnos santos, sin mancha e irreprensibles'),
    Pregunta(
        idLibro: 2,
        idPregunta: 31,
        contestada: false,
        pregunta: '''Seleccione la opción correcta:\n'''
            '''a)	Pablo Se gozaba en sus padecimientos\n'''
            '''b)	Pablo veía a Cristo en sus prisiones\n'''
            '''c)	Pablo sentía pena por los creyentes de colosa\n'''
            '''d)	Todas las anteriores.\n''',
        cita: 'Colosenses 1:24',
        valor: 1,
        respuesta: 'a'),
    Pregunta(
        idLibro: 2,
        idPregunta: 32,
        contestada: false,
        pregunta:
            '¿Para qué fue hecho ministro Pablo, según la administración de Dios?',
        cita: 'Colosenses 1:25',
        valor: 1,
        respuesta: 'Para anunciar cumplidamente la palabra de Dios'),
    Pregunta(
        idLibro: 2,
        idPregunta: 33,
        contestada: false,
        pregunta: '¿Desde cuándo había estado oculto el misterio de Dios?',
        cita: 'Colosenses 1:26',
        valor: 2,
        respuesta: 'desde los siglos y edades'),
    Pregunta(
        idLibro: 2,
        idPregunta: 34,
        contestada: false,
        pregunta:
            'El misterio de Dios que había estado oculto, fue manifestado a nosotros los santos. (verdadero o falso).',
        cita: 'Colosenses 1:26',
        valor: 1,
        respuesta: 'verdadero'),
    Pregunta(
        idLibro: 2,
        idPregunta: 35,
        contestada: false,
        pregunta:
            'Complete el texto: a quienes _________  quiso dar a conocer las _________ de la gloria de este ___________ entre los gentiles; que es ___________ en vosotros la _____________ de gloria.',
        cita: 'Colosenses 1:27',
        valor: 4,
        respuesta: 'Dios, riquezas, misterio, cristo, esperanza'),
    Pregunta(
        idLibro: 2,
        idPregunta: 36,
        contestada: false,
        pregunta:
            '''¿de qué manera actuaba la potencia de Cristo en el apóstol Pablo?\n'''
            '''a)	Eficaz y sabiamente\n'''
            '''b)	Poderosamente\n'''
            '''c)	Por caminos misteriosos\n'''
            '''d)	Ninguna de las anteriores\n''',
        cita: 'Colosenses 1:29',
        valor: 1,
        respuesta: 'b'),
    Pregunta(
        idLibro: 2,
        idPregunta: 37,
        contestada: false,
        pregunta:
            '''Pablo sostenía gran lucha por los Colosenses y por los que estaban en:\n'''
            '''a)	Nínive\n'''
            '''b)	Jerusalén\n'''
            '''c)	Laodicea\n'''
            '''d)	Creta\n''',
        cita: 'Colosenses 2:1',
        valor: 1,
        respuesta: 'c'),
    Pregunta(
        idLibro: 2,
        idPregunta: 38,
        contestada: false,
        pregunta:
            '''Pablo luchaba por los creyentes de cada iglesia, con el propósito de consolar:\n'''
            '''a)	Sus corazones\n'''
            '''b)	A su familia\n'''
            '''c)	A los que lloran\n'''
            '''d)	Al débil en la fe\n''',
        cita: 'Colosenses 2:2',
        valor: 1,
        respuesta: 'a'),
    Pregunta(
        idLibro: 2,
        idPregunta: 39,
        contestada: false,
        pregunta:
            'Diga cuales son 2 de los tesoros que según Pablo, están escondidos en Cristo.',
        cita: 'Colosenses 2:3',
        valor: 2,
        respuesta: 'sabiduría y conocimiento'),
    Pregunta(
        idLibro: 2,
        idPregunta: 40,
        contestada: false,
        pregunta:
            'Complete el texto: y esto os digo para que nadie os ________ con palabras ___________.',
        cita: 'Colosenses 2:4',
        valor: 2,
        respuesta: 'engañe, persuasivas'),
    Pregunta(
        idLibro: 2,
        idPregunta: 41,
        contestada: false,
        pregunta:
            'Pablo estaba ausente en el cuerpo y ausente en el espíritu. (verdadero o falso).',
        cita: 'Colosenses 2:5',
        valor: 1,
        respuesta: 'falso'),
    Pregunta(
        idLibro: 2,
        idPregunta: 42,
        contestada: false,
        pregunta:
            '¿Cuáles son las 2 cosas que Pablo se gozaba de mirar en los colosenses?',
        cita: 'Colosenses 2:5',
        valor: 3,
        respuesta: 'su buen orden y la firmeza de su fe en Cristo'),
    Pregunta(
        idLibro: 2,
        idPregunta: 43,
        contestada: false,
        pregunta:
            '''Por tanto, de la manera que habéis aprendido al Señor Jesucristo:\n'''
            '''a)	Pensad sabiamente\n'''
            '''b)	Recibid el evangelio\n'''
            '''c)	Andad en él\n'''
            '''d)	Ninguna de las anteriores\n''',
        cita: 'Colosenses 2:6',
        valor: 1,
        respuesta: 'c'),
    Pregunta(
        idLibro: 2,
        idPregunta: 44,
        contestada: false,
        pregunta:
            '''Según el versículo, ¿en qué recomienda Pablo que abundemos?:\n'''
            '''A)	Fe y esperanza\n'''
            '''B)	Temor de Dios\n'''
            '''C)	Buenas acciones\n'''
            '''D)	Ninguna de las anteriores\n''',
        cita: 'Colosenses 2:7',
        valor: 1,
        respuesta: 'd'),
    Pregunta(
        idLibro: 2,
        idPregunta: 45,
        contestada: false,
        pregunta:
            'En Cristo habita ___________ toda la ______________ de la __________. ',
        cita: 'Colosenses 2:9',
        valor: 4,
        respuesta: 'corporalmente, plenitud, deidad'),
    Pregunta(
        idLibro: 2,
        idPregunta: 46,
        contestada: false,
        pregunta:
            '¿Según el texto, de quiénes es la cabeza Cristo?',
        cita: 'Colosenses 2:10',
        valor: 2,
        respuesta: 'de todo principado y potestad'),
    Pregunta(
        idLibro: 2,
        idPregunta: 47,
        contestada: false,
        pregunta:
            'Al creer en Cristo, somos circuncidados con circuncisión espiritual, y ahora no necesitamos circuncidarnos físicamente. Verdadero o falso.',
        cita: 'Colosenses 2:11',
        valor: 1,
        respuesta: 'verdadero'),
    Pregunta(
        idLibro: 2,
        idPregunta: 48,
        contestada: false,
        pregunta:
            '¿Cuáles son los 2 atributos o palabras, con los cuales Pablo describe el cuerpo humano?.',
        cita: 'Colosenses 2:11',
        valor: 2,
        respuesta: 'pecaminoso, carnal'),
    Pregunta(
        idLibro: 2,
        idPregunta: 49,
        contestada: false,
        pregunta:
            'En el bautismo somos ___________ y _____________ con Cristo, mediante ____________ en el poder de Dios, que le ______________ de los muertos.',
        cita: 'Colosenses 2:12',
        valor: 4,
        respuesta: 'sepultados, resucitados, la fe, levantó'),
    Pregunta(
        idLibro: 2,
        idPregunta: 50,
        contestada: false,
        pregunta:
            'Antes de Cristo nos encontrábamos vivos espiritualmente. Verdadero o falso.',
        cita: 'Colosenses 2:13',
        valor: 1,
        respuesta: 'falso'),
    Pregunta(
        idLibro: 2,
        idPregunta: 51,
        contestada: false,
        pregunta:
            'Complete: y a vosotros, estando  __________ en vuestros _________, y en la ___________ de vuestra carne, os dio _________ juntamente con él, _____________ todos vuestros ______________. ',
        cita: 'Colosenses 2:13',
        valor: 4,
        respuesta: 'muertos, pecados, circuncisión, vida, perdonando, pecados'),
    Pregunta(
        idLibro: 2,
        idPregunta: 52,
        contestada: false,
        pregunta:
            '¿qué cosa anuló Cristo, que nos era contraria?',
        cita: 'Colosenses 2:14',
        valor: 1,
        respuesta: 'el acta de los decretos'),
    Pregunta(
        idLibro: 2,
        idPregunta: 53,
        contestada: false,
        pregunta:
            '¿Dónde clavó Cristo el acta de los decretos que había contra nosotros?',
        cita: 'Colosenses 2:14',
        valor: 1,
        respuesta: 'en la cruz'),
    Pregunta(
        idLibro: 2,
        idPregunta: 54,
        contestada: false,
        pregunta:
            'Con su muerte, Cristo no solo despojó a los principados y potestades, sino que también los __________  __________,triunfando sobre ellos en la cruz.',
        cita: 'Colosenses 2:15',
        valor: 2,
        respuesta: 'exhibió públicamente'),
      Pregunta(
        idLibro: 2,
        idPregunta: 55,
        contestada: false,
        pregunta:
            'Mencione al menos 3 cosas en las cuales nadie puede juzgarnos.',
        cita: 'Colosenses 2:16',
        valor: 3,
        respuesta: 'comida, bebida, días de fiesta, luna nueva, días de reposo'),
        Pregunta(
        idLibro: 2,
        idPregunta: 56,
        contestada: false,
        pregunta:
            '¿quién da el crecimiento al cuerpo de Cristo?',
        cita: 'Colosenses 2:19',
        valor: 1,
        respuesta: 'Dios'),
      Pregunta(
        idLibro: 2,
        idPregunta: 57,
        contestada: false,
        pregunta:
            'Preceptos como: Dejar de comer, beber, gustar, tocar, y muchos otros mandamientos de hombre, contra qué cosa no tienen valor alguno.',
        cita: 'Colosenses 2:23',
        valor: 2,
        respuesta: 'los apetitos de la carne'),
        Pregunta(
        idLibro: 2,
        idPregunta: 58,
        contestada: false,
        pregunta:
            'Nombre las 3 personas que se mencionan en la carta a los Colosenses.',
        cita: 'Colosenses 1:1,7',
        valor: 2,
        respuesta: 'Pablo, Timoteo y Epafras'),
        Pregunta(
        idLibro: 2,
        idPregunta: 59,
        contestada: false,
        pregunta:
            '¿Cuántos capítulos en total componen la carta a los Colosenses?',
        cita: 'Colosenses',
        valor: 1,
        respuesta: '4'),
        Pregunta(
        idLibro: 2,
        idPregunta: 60,
        contestada: false,
        pregunta:
            '¿Cuántos versículos tiene el capítulo 1 de Colosenses? ',
        cita: 'Colosenses',
        valor: 1,
        respuesta: '29'),
  ];
}
