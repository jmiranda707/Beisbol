import 'package:audioplayers/audio_cache.dart';
import 'package:beisbol/models/datosInningModel.dart';
import 'package:beisbol/models/equipoModel.dart';
import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ResultadoPage extends StatefulWidget {
  const ResultadoPage({Key key}) : super(key: key);

  @override
  _ResultadoPageState createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {
  @override
  void initState() { 
    super.initState();
    playLocal();
  }
  playLocal() async {
    final player= AudioCache();
    await player.play('audios/tararara.mp3',);
  }

  @override
  Widget build(BuildContext context) {
    playLocal();
    Equipo equipo1 = Provider.of<HomeViewModel>(context).equipo1;
    Equipo equipo2 = Provider.of<HomeViewModel>(context).equipo2;
    DatosInning datos = Provider.of<HomeViewModel>(context).datos;
    ScreenUtil.init(context,
        width: SizesCustom.width,
        height: SizesCustom.height,
        allowFontScaling: false);
    return Scaffold(
   
      body: Stack(
        children: [
          Image(
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
            image: AssetImage("assets/wallpapers/resultados.jpeg"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
                 Expanded(child: SizedBox(),),
                 Container(
                   child: 
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('                              Inning ', style: TextStyle(color: Colorz.amarillo, fontSize: f(60), fontWeight: FontWeight.normal)),
                       Text(datos.inningActual.toString(), style: TextStyle(color: Colorz.naranja, fontSize: f(60), fontWeight: FontWeight.normal)),
                       Icon( (datos.abriendoCerrando=='abriendo')?Icons.arrow_drop_up:Icons.arrow_drop_down, color: Colorz.naranja, size: w(70))
                     ],
                   )
                 ),
                 Container(
                   margin: EdgeInsets.symmetric(horizontal: w(390)),
                   color: Colorz.negro.withOpacity(0.75),
                   padding: EdgeInsets.all(w(10)),
                   child: Column(
                     children: [
                       _rowEquipo(equipo1),
                                        SizedBox(height: w(10)),
                                        Divider(color: Colorz.blanco, thickness: 3,),
                                        SizedBox(height: w(10)),
                      _rowEquipo(equipo2),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: w(50)),
                                        CircularButton(
                borderColor: Colorz.blanco,
                width: 250,
                color: Colorz.rojo,
                function: (){
                  Provider.of<HomeViewModel>(context, listen: false).goToPartido(context);
                },
                height: 60,
                nameButton: 'CONTINUAR',
              ),
                                        Expanded(child: SizedBox(),),
                                    
                                   ],
                                 ),
                               ],
                             ),
                           );
                         }

                         _rowEquipo(Equipo equipo) {
                           return Row(children: [
                   //_avatars(equipo1.logoImage, equipo1.color, context),
                   Image(
                     width: w(170),
            fit: BoxFit.contain,
            image: AssetImage("assets/logosEquipos/${equipo.logoImage}"),
          ),
                    SizedBox(width: w(5)),
                   Container(
                     width: w(430),
                     child: Text(equipo.nombre, style: TextStyle(color: Colorz.blanco, fontSize: f(80), fontWeight: FontWeight.bold))),
                     Container(
                       width: w(190),
                       color: equipo.color,
                     child: Center(child: Text(equipo.carreras.toString(), style: TextStyle(color: Colorz.blanco, fontSize: f(120), fontWeight: FontWeight.bold))))
                     
                 ],);
                         }
}