import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SeleccioneLogoPage extends StatelessWidget {
  const SeleccioneLogoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: SizesCustom.width,
        height: SizesCustom.height,
        allowFontScaling: false);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colorz.rojo,
        title: Row(
          children: [
            Text('EQUIPO 1: ', style: TextStyle(
                                fontSize: f(25),
                                fontWeight: FontWeight.bold,
                                color: Colorz.blanco)),
                                Text('Seleccione Logo del Equipo', style: TextStyle(
                            fontSize: f(25),
                            fontWeight: FontWeight.bold,
                            color: Colorz.blanco))
          ],
        ),
      ),
      body: Stack(
        children: [
          Image(
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
            image: AssetImage("assets/wallpapers/campo.jpg"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /*Center(
                  child: Card(
                                      child: Text('TEAM 1',
                        style: TextStyle(
                            fontSize: f(25),
                            fontWeight: FontWeight.bold,
                            color: Colorz.rojo)),
                  )),
              Center(
                  child: Card(
                                      child: Text('Seleccione Logo del Equipo:',
                        style: TextStyle(fontSize: f(25), color: Colorz.rojo, fontWeight: FontWeight.bold,)),
                  )),*/
                  Expanded(child: SizedBox()),
              _rows(
                  'princesa.png',
                  'soldado.png',
                  'oveja.png',
                  'estrella.png',
                  Colorz.rosado,
                  Colorz.verdeClaro,
                  Colorz.negro,
                  Colorz.morado, context,),
                  SizedBox(height: w(90),),
              _rows('cafe.png', 'paloma.png', 'adorador.png', 'biblia.png',
                  Colorz.amarillo, Colorz.azul, Colorz.naranja, Colorz.rojo, context),
                    Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }

_avatars(String path, Color color, BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      radius: w(130),
      child: InkWell(
              onTap: ()=>  Provider.of<HomeViewModel>(context, listen:false).goToNombreEquipo1(context, path, color)
,
                      child: Image(
          fit: BoxFit.contain,
          image: AssetImage("assets/logosEquipos/$path"),
        ),
      ),
    );
        }
      
        _rows(String path1, String path2, String path3, String path4, Color color1,
            Color color2, Color color3, Color color4, BuildContext context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _avatars(path1, color1, context),
              _avatars(path2, color2, context),
              _avatars(path3, color3, context),
              _avatars(path4, color4, context),
            ],
          );
        }
      

  

}