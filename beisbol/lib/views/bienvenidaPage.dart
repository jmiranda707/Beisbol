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
      body: Stack(
        children: [
          Image(
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
            image: AssetImage("assets/wallpapers/estadio.jpg"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: w(160),),
              Center(child: Text('Bienvenidos', style: TextStyle(
                            fontSize: f(100),
                            fontWeight: FontWeight.bold,
                            color: Colorz.negro))),
                            SizedBox(height: w(100),),
              Center(child: Text('BEISBOL BÍBLICO', style: TextStyle(
                            fontSize: f(130),
                            fontWeight: FontWeight.bold,
                            color: Colorz.amarillo))),
                            SizedBox(height: w(190),),
              CircularButton(
                borderColor: Colorz.blanco,
                width: 200,
                color: Colorz.rojo,
                function: (){
                  Navigator.pushNamed(context, 'seleccioneLogo');
                },
                height: 60,
                nameButton: 'INGRESAR',
              )
            ],
          ),
        ],
      ),
    );
  }
}