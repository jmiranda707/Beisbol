import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeleccioneTeamPage extends StatelessWidget {
  const SeleccioneTeamPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: SizesCustom.width,
        height: SizesCustom.height,
        allowFontScaling: false);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colorz.amarillo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(child: Text('TEAM 1')),
          Center(child: Text('Seleccione Equipo')),
          _rows('princesa.png','soldado.png','leon.png','soldado.png', Colorz.rosado, Colorz.verdeClaro, Colorz.amarillo, Colorz.azul),
          _rows('princesa.png','soldado.png','princesa.png','soldado.png', Colorz.negro, Colorz.morado, Colorz.naranja, Colorz.rojo)
                  ],
                ),
              );
            }
          
            _rows(String path1, String path2, String path3, String path4, Color color1, Color color2, Color color3, Color color4) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   _avatars(path1,color1),
                   _avatars(path2,color2),
                   _avatars(path3, color3),
                   _avatars(path4, color4),
                                   ],
                                 );
                               }
                   
                     _avatars(String path, Color color) {
                       return InkWell(
                         onTap: (){

                         },
                                        child: CircleAvatar(
                                          backgroundColor: color,
                                        radius: w(130),
                                        child: Image(
                                          fit: BoxFit.contain,
                image: AssetImage("assets/logosEquipos/$path"),
                
              ),
                                      ),
                       );
                     }
}