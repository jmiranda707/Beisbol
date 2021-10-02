import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
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
          Container(
            margin: EdgeInsets.all(w(50)),
            color: Colorz.negro.withOpacity(0.75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                    Expanded(child: SizedBox()),
                _rows(
                    'pelotero.png',
                    'soldado2.png',
                    'oveja.png',
                    'guerrero.png',
                    Colors.blueAccent,
                    Colorz.verdeOscuro,
                    Colorz.azulCielo,
                    Colorz.morado, context,),
                    SizedBox(height: w(90),),
                _rows('tigre.png', 'paloma.png', 'adorador.png', 'cafe2.png',
                    Colorz.amarillo, Colorz.azul, Colorz.naranja, Colorz.rojo, context),
                      Expanded(child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }

_avatars(String path, Color color, BuildContext context) {
    return Container(
      child: CircleAvatar(
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
      ),
      decoration: new BoxDecoration(
    color: Colorz.blanco, // border color
    shape: BoxShape.circle,
    border: new Border.all(
      width: w(3),
      color: Colorz.blanco,
    ),
  )
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