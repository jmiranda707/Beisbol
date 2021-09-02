import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:beisbol/models/datosInningModel.dart';
import 'package:beisbol/models/equipoModel.dart';
import 'package:beisbol/models/preguntaModel.dart';
import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class PartidoPage extends StatefulWidget {
  const PartidoPage({Key key}) : super(key: key);

  @override
  _PartidoPageState createState() => _PartidoPageState();
}

class _PartidoPageState extends State<PartidoPage> {
  final CountdownController controller = CountdownController();
  bool _isPause = true;
  bool _isRestart = false;

  @override
  Widget build(BuildContext context) {
    Equipo equipo1 = Provider.of<HomeViewModel>(context).equipo1;
    Equipo equipo2 = Provider.of<HomeViewModel>(context).equipo2;
    DatosInning datos = Provider.of<HomeViewModel>(context).datos;
    bool showPregunta = Provider.of<HomeViewModel>(context).showPregunta;
    Pregunta pregunta= Provider.of<HomeViewModel>(context).preguntaSelected;
     String mensajeAnimado = Provider.of<HomeViewModel>(context).mensajeAnimado;
      List<String> mensajeCorrecto = Provider.of<HomeViewModel>(context).mensajeCorrecto;
      List<Pregunta> allPreguntas = Provider.of<HomeViewModel>(context).allPreguntas;
    Equipo equipoAlBate =
        (datos.abriendoCerrando == 'abriendo') ? equipo1 : equipo2;
   /* _isPause= (showPregunta)?true: false;
    (showPregunta)?controller.resume(): controller.pause();*/
    ScreenUtil.init(context,
        width: SizesCustom.width,
        height: SizesCustom.height,
        allowFontScaling: false);
    return Scaffold(
     
      floatingActionButton: Container(
        width:  w(150),
        height:  w(150),
        child: FloatingActionButton(
          
          backgroundColor: Colorz.blanco,

          onPressed: (){
            Provider.of<HomeViewModel>(context, listen: false).picharPregunta();
          },
          child: Icon(Icons.help, size: w(150), color: Colorz.azulCielo),
          ),
      ),
      body: Stack(
        children: [
          Image(
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
            image: AssetImage("assets/wallpapers/partido2.jpg"),
          ),
          Positioned(
            bottom: w(180),
            right: w(50),
                      child: CircleAvatar(
            radius: w(50),
            backgroundColor: Colors.blue[900],
            child: Center(child: Text(allPreguntas.length.toString(), style: TextStyle(fontSize: f(50), color: Colorz.blanco))),
            ),
          ),
          (showPregunta)?Positioned(
            bottom: w(180),
            left: (MediaQuery.of(context).size.width / 2) - w(125),
            child: IconRectangularButton(
              borderColor: Colorz.blanco,
              width: 250,
              color: Colorz.verdeOscuro,
              function: () async{
                
               await Provider.of<HomeViewModel>(context, listen: false).respuestaCorrecta(pregunta ,context);
               setState(() {
                                _isPause = true;
                              });
              },
              height: 60,
              nameButton: 'CORRECTO',
              icon: Icons.check_circle,
              iconColor: Colorz.amarillo,
            ),
          ):Offstage(),
         
          (showPregunta)?Positioned(
            bottom: w(100),
            left: (MediaQuery.of(context).size.width / 2) - w(125),
            child: IconRectangularButton(
              borderColor: Colorz.blanco,
              width: 250,
              color: Colorz.rojo,
              function: () async{
               
                await Provider.of<HomeViewModel>(context, listen: false).respuestaIncorrecta(context);
                setState(() {
                                _isPause = true;
                              });
              },
              height: 60,
              nameButton: 'INCORRECTO',
              icon: Icons.cancel,
              iconColor: Colorz.blanco,
            ),
          ):Offstage(),
          Positioned(
            top: w(70),
            left: w(35),
            child: _baseWidget(datos.terceraBusy, equipoAlBate.color),
          ),
          Positioned(
            top: w(05),
            left: w(100),
            child: _baseWidget(datos.segundaBusy, equipoAlBate.color),
          ),
          Positioned(
            top: w(70),
            left: w(165),
            child: _baseWidget(datos.primeraBusy, equipoAlBate.color),
          ),
          Positioned(
            top: w(135),
            left: w(100),
            child: _baseWidget(false, equipoAlBate.color),
          ),
          Positioned(
              top: w(50),
              left: w(320),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _rowInning(datos),
                  _rowEquipo(equipo1),
                  _rowEquipo(equipo2),
                ],
              )),
           (showPregunta)?Positioned(
              top: w(20),
              right: w(40),
              child: Countdown(
                seconds: datos.time,
                build: (BuildContext context, double time) {
                  final IconData buttonIcon = _isRestart
                      ? Icons.refresh_rounded
                      : (_isPause ? Icons.pause_circle_filled : Icons.play_circle_fill);
                  return Column(
                    children: [
                      Text('Tiempo',
                          style: TextStyle(
                              color: Colorz.negro,
                              fontSize: f(70),
                              fontWeight: FontWeight.bold)),
                      Text(time.toString(),
                          style: TextStyle(
                              color: Colors.red[900],
                              fontSize: f(100),
                              fontWeight: FontWeight.bold)),
                      InkWell(
                          onTap: () {
                            final isCompleted = controller.isCompleted;
                            isCompleted
                                ? controller.restart()
                                : controller.pause();

                            if (!isCompleted && !_isPause) {
                              controller.resume();
                            }

                            if (isCompleted) {
                              setState(() {
                                _isRestart = false;
                              });
                            } else {
                              setState(() {
                                _isPause = !_isPause;
                              });
                            }
                          },
                          child: Icon(buttonIcon,
                              size: w(100), color: Colorz.negro))
                    ],
                  );
                },
                controller: controller,
                interval: Duration(milliseconds: 100),
                onFinished: () async{
                  
                    await Provider.of<HomeViewModel>(context, listen: false).timeOver(context);
                    setState(() {
                                _isPause = true;
                              });
                 
                },
              )):Offstage(),
              (showPregunta)?Center(
                child: Container(
                 // margin: EdgeInsets.symmetric(horizontal: w(390)),
                   width: w(1100),
                   height: w(400),
                   color: Colorz.negro.withOpacity(0.98),
                   padding: EdgeInsets.all(w(10)),
                  child: 
                SingleChildScrollView(
                                  child: Center(
                    child: Text('${pregunta.cita}\n${pregunta.pregunta}',
                    textAlign: TextAlign.center,
              style: TextStyle(
                      color: Colorz.blanco,
                      fontSize: f(40),
                      fontWeight: FontWeight.bold)),
                  ),
                )
                ,)
              ):Offstage(),

             (mensajeAnimado=='')?Offstage(): Center(
               child: SizedBox(
  width: w(600),
  child: ScaleAnimatedTextKit(
    onTap: () {
        //print("Tap Event");
      },
    text: [
      mensajeAnimado
      ],
    textStyle: TextStyle(
        fontSize: f(150),
        fontFamily: "Canterbury",
        fontWeight: FontWeight.bold,
        color: Colorz.rojo,
    ),
    textAlign: TextAlign.center,
    isRepeatingAnimation: false,
  ),
),
             ),

            (mensajeCorrecto.length==0)?Offstage(): Center(
               child: Container(
                 color: Colorz.negro,
  width: w(850),
  child: ColorizeAnimatedTextKit(
    onTap: () {
      },
    text:mensajeCorrecto,
    textStyle: TextStyle(
        fontSize: f(150),
        fontFamily: "Horizon",
        fontWeight: FontWeight.bold,
    ),
    colors: [
      Colors.purple,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.red,
    ],
    textAlign: TextAlign.center,
    isRepeatingAnimation: false,
  ),
),
             )
        ],
      ),
    );
  }

  _baseWidget(bool isBusy, Color color) {
    return new Transform(
      child: Icon(Icons.stop,
          size: w(170), color: (isBusy) ? color : Colorz.negro),
      alignment: FractionalOffset.center,
      transform: new Matrix4.identity()..rotateZ(45 * 3.1415927 / 180),
    );
  }

  _rowEquipo(Equipo equipo) {
    return Container(
      color: equipo.color.withOpacity(0.7),
      child: Row(
        children: [
          Container(
              width: w(240),
              child: Text(equipo.nombre,
                  style: TextStyle(
                      color: Colorz.blanco,
                      fontSize: f(40),
                      fontWeight: FontWeight.bold))),
          SizedBox(width: w(10)),
          Container(
            color: equipo.color,
            child: Text(equipo.carreras.toString(),
                style: TextStyle(
                    color: Colorz.blanco,
                    fontSize: f(50),
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  _rowInning(DatosInning datos) {
    return Container(
      width: w(285),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(width: w(100)),
          
          SizedBox(width: w(20)),
         (datos.outs>=1)? Icon(Icons.sports_baseball, size: w(40), color: Colorz.blanco): Offstage(),
         (datos.outs>=2)? Icon(Icons.sports_baseball, size: w(40), color: Colorz.blanco): Offstage(),
         (datos.outs>=3)?  Icon(Icons.sports_baseball, size: w(40), color: Colorz.blanco): Offstage(),
         Text('${datos.inningActual}',
              style: TextStyle(
                  color: Colorz.naranja,
                  fontSize: f(30),
                  fontWeight: FontWeight.bold)),
          Icon(
              (datos.abriendoCerrando == 'abriendo')
                  ? Icons.arrow_drop_up
                  : Icons.arrow_drop_down,
              size: w(40),
              color: Colorz.naranja),
        ],
      ),
    );
  }
}
