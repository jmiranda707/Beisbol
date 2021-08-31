class Pregunta {
    Pregunta({
    this.pregunta,
    this.idPregunta,
    this.idLibro,
    this.contestada,
    this.valor,
    this.cita,
    this.respuesta
  });
  
   String pregunta;
   String cita;
   int idPregunta;
   int idLibro;
   int valor; // 1, 2, 3, 4
   bool contestada;
   String respuesta;
}