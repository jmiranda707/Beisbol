import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:beisbol/models/equipoModel.dart';
import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:provider/provider.dart';

class FinPage extends StatefulWidget {
  const FinPage({Key key}) : super(key: key);

  @override
  _FinPageState createState() => _FinPageState();
}

class _FinPageState extends State<FinPage> {
  @override
  void initState() {
    playLocal();
    super.initState();
  }

  playLocal() async {
    final player = AudioCache();
    await player.play(
      'audios/aplausosfin.mp3',
    );
    
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<HomeViewModel>(context, listen: false);
    Equipo equipo1 = vm.equipo1;
    Equipo equipo2 = vm.equipo2;
    Equipo ganador = (equipo2.carreras > equipo1.carreras)
        ? equipo2
        : (equipo2.carreras == equipo1.carreras)
            ? null
            : equipo1;
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
            image: AssetImage("assets/wallpapers/ganador.jpg"),
          ),
          (ganador == null)
              ? Positioned(
                  top: w(50),
                  left: (ganador == null)
                      ? MediaQuery.of(context).size.width / 2 - w(420)
                      : MediaQuery.of(context).size.width / 2 - w(200),
                  child: Row(
                    children: [
                      //equipo 1
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              child: CircleAvatar(
                                backgroundColor: equipo1.color,
                                radius: w(200),
                                child: Stack(
                                  children: [
                                    Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/logosEquipos/${equipo1.logoImage}"),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: new BoxDecoration(
                                color: Colorz.blanco, // border color
                                shape: BoxShape.circle,
                                border: new Border.all(
                                  width: w(5),
                                  color: Colorz.blanco,
                                ),
                              )),
                          SizedBox(height: w(45)),
                          SizedBox(
                            height: w(190),
                          ),
                        ],
                      ),
                      SizedBox(width: w(20)),
                      //equipo2
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              child: CircleAvatar(
                                backgroundColor: equipo2.color,
                                radius: w(200),
                                child: Stack(
                                  children: [
                                    Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/logosEquipos/${equipo2.logoImage}"),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: new BoxDecoration(
                                color: Colorz.blanco, // border color
                                shape: BoxShape.circle,
                                border: new Border.all(
                                  width: w(5),
                                  color: Colorz.blanco,
                                ),
                              )),
                          SizedBox(height: w(45)),
                          SizedBox(
                            height: w(190),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : Positioned(
                  top: w(50),
                  left: MediaQuery.of(context).size.width / 2 - w(200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          child: CircleAvatar(
                            backgroundColor: ganador.color,
                            radius: w(200),
                            child: Stack(
                              children: [
                                Image(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                      "assets/logosEquipos/${ganador.logoImage}"),
                                ),
                              ],
                            ),
                          ),
                          decoration: new BoxDecoration(
                            color: Colorz.blanco, // border color
                            shape: BoxShape.circle,
                            border: new Border.all(
                              width: w(5),
                              color: Colorz.blanco,
                            ),
                          )),
                      SizedBox(height: w(45)),
                      SizedBox(
                        height: w(190),
                      ),
                    ],
                  ),
                ),
          Positioned(
            bottom: w(200),
            left: MediaQuery.of(context).size.width / 2 - w(550),
            child: Center(
              child: Container(
                color: Colorz.negro.withOpacity(0.95),
                width: w(1100),
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 80,
                    fontFamily: 'Bobbers',
                  ),
                  child: AnimatedTextKit(
                    isRepeatingAnimation: true,
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText(
                          (ganador == null)
                              ? 'Felicitaciones a...'
                              : 'Felicidades al equipo...',
                          textStyle: TextStyle(
                            fontSize: 80,
                            fontFamily: 'Bobbers',
                          ),
                          textAlign: TextAlign.center,
                          speed: Duration(milliseconds: 70)),
                      TyperAnimatedText(
                          (ganador == null)
                              ? 'los ${equipo1.nombre.toUpperCase()} y ${equipo2.nombre.toUpperCase()}'
                              : 'VENCEDOR...',
                          textStyle: TextStyle(
                            fontSize: 80,
                            fontFamily: 'Bobbers',
                          ),
                          textAlign: TextAlign.center,
                          speed: Duration(milliseconds: 70)),
                      TyperAnimatedText(
                          (ganador == null)
                              ? 'todo el esfuerzo!!!'
                              : '${ganador.nombre.toUpperCase()}!!!',
                          textStyle: TextStyle(
                            fontSize: 80,
                            fontFamily: 'Bobbers',
                          ),
                          textAlign: TextAlign.center,
                          speed: Duration(milliseconds: 70)),
                    ],
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ),
 Positioned(
              bottom: 30,
                          left: MediaQuery.of(context).size.width / 2 - 100,

              
                        child: CircularButton(
                    borderColor: Colorz.blanco,
                    width: 200,
                    color: Colorz.rojo,
                    function: () {
                      Navigator.pushNamed(context, '/');
                    },
                    height: 60,
                    nameButton: 'FINALIZAR',
                  ),
          
          )
        ],
      ),
    );
  }
}
