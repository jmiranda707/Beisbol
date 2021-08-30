import 'package:beisbol/models/datosInningModel.dart';
import 'package:beisbol/models/equipoModel.dart';
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
    ScreenUtil.init(context,
        width: SizesCustom.width,
        height: SizesCustom.height,
        allowFontScaling: false);
    return Scaffold(
    /*  appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colorz.rojo,
        title: Row(
          children: [
            Text('Resultado ', style: TextStyle(
                                fontSize: f(25),
                                fontWeight: FontWeight.bold,
                                color: Colorz.blanco)),
                               /* Text('Seleccione Logo del Equipo', style: TextStyle(
                            fontSize: f(25),
                            fontWeight: FontWeight.bold,
                            color: Colorz.blanco,))*/
          ],
        ),
      ),*/
      body: Stack(
        children: [
          Image(
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
            image: AssetImage("assets/wallpapers/resultados.jpeg"),
          ),
           Positioned(
             bottom: w(180),
             left: (MediaQuery.of(context).size.width/2) - w(125),
                        child: IconRectangularButton(
                  borderColor: Colorz.blanco,
                  width: 250,
                  color: Colorz.verdeOscuro,
                  function: (){
                    //Provider.of<HomeViewModel>(context, listen: false).goToPartido(context);
                  },
                  height: 60,
                  nameButton: 'CORRECTO',
                  icon: Icons.check_circle,
                  iconColor: Colorz.amarillo,
                ),
           ),
           Positioned(
             bottom: w(100),
             left: (MediaQuery.of(context).size.width/2) - w(125),
                        child: IconRectangularButton(
                  borderColor: Colorz.blanco,
                  width: 250,
                  color: Colorz.rojo,
                  function: (){
                    //Provider.of<HomeViewModel>(context, listen: false).goToPartido(context);
                  },
                  height: 60,
                  nameButton: 'INCORRECTO',
                   icon: Icons.cancel,
                  iconColor: Colorz.blanco,
                ),
           ),
           Positioned(
             top: w(50),
             right: w(80),
             child: 
            Countdown(
      seconds: 20,
      build: (BuildContext context, double time){
        final IconData buttonIcon = _isRestart
        ? Icons.refresh
        : (_isPause ? Icons.pause : Icons.play_arrow);
         return Column(
        children: [
          Text('Tiempo', style: TextStyle(color: Colorz.blanco, fontSize: f(70), fontWeight: FontWeight.bold)),
          Text(time.toString(), style: TextStyle(color: Colorz.rojo, fontSize: f(100), fontWeight: FontWeight.bold)),
          InkWell(
            onTap: (){
              final isCompleted = controller.isCompleted;
          isCompleted ? controller.restart() : controller.pause();

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
            child: Icon(buttonIcon, size: w(100), color: Colorz.amarillo))
        ],
      );},
      controller: controller,
      interval: Duration(milliseconds: 100),
      onFinished: () {
        print('Tiempo Agotado');
        setState(() {
              _isRestart = true;
            });
      },
    )
           )
                               ],
                             ),
                           );
                         }

}