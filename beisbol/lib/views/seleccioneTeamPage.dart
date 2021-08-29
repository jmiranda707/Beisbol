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
        backgroundColor: Colorz.rojo,
        title: Text('BEISBOL BÍBLICO'),
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
              Center(
                  child: Card(
                                      child: Text('TEAM 1',
                        style: TextStyle(
                            fontSize: f(25),
                            fontWeight: FontWeight.bold,
                            color: Colorz.rojo)),
                  )),
              Center(
                  child: Card(
                                      child: Text('Seleccione un Logo',
                        style: TextStyle(fontSize: f(25), color: Colorz.rojo, fontWeight: FontWeight.bold,)),
                  )),
                  Expanded(child: SizedBox()),
              _rows(
                  'princesa.png',
                  'soldado.png',
                  'oveja.png',
                  'estrella.png',
                  Colorz.rosado,
                  Colorz.verdeClaro,
                  Colorz.negro,
                  Colorz.morado),
                  SizedBox(height: w(90),),
              _rows('cafe.png', 'paloma.png', 'adorador.png', 'biblia.png',
                  Colorz.amarillo, Colorz.azul, Colorz.naranja, Colorz.rojo),
                    Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }

  _rows(String path1, String path2, String path3, String path4, Color color1,
      Color color2, Color color3, Color color4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _avatars(path1, color1),
        _avatars(path2, color2),
        _avatars(path3, color3),
        _avatars(path4, color4),
      ],
    );
  }

  _avatars(String path, Color color) {
    return InkWell(
      onTap: () {},
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
