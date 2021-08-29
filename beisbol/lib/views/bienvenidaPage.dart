import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BienvenidaPage extends StatelessWidget {
  const BienvenidaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getSizeDevice(context);
    ScreenUtil.init(context,
        width: SizesCustom.width,
        height: SizesCustom.height,
        allowFontScaling: false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Bienvenidos')),
          Center(child: Text('BEISBOL BÍBLICO')),
          CircularButton(
            borderColor: Colorz.amarillo,
            width: 200,
            color: Colorz.verdeClaro,
            function: (){
              Navigator.pushNamed(context, 'seleccioneTeam');
            },
            height: 60,
            nameButton: 'INGRESAR',
          )
        ],
      ),
    );
  }
}