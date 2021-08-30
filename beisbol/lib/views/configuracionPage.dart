import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:beisbol/widgets/slide.dart';
import 'package:direct_select/direct_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ConfiguracionPage extends StatefulWidget {
  const ConfiguracionPage({Key key}) : super(key: key);

  @override
  _ConfiguracionPageState createState() => _ConfiguracionPageState();
}

class _ConfiguracionPageState extends State<ConfiguracionPage> {
  

  @override
  void initState() {
    super.initState();
  }

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
            Text('CONFIGURACIÓN ',
                style: TextStyle(
                    fontSize: f(25),
                    fontWeight: FontWeight.bold,
                    color: Colorz.blanco)),
            /*Text('Seleccione Logo del Equipo',
                style: TextStyle(
                    fontSize: f(25),
                    fontWeight: FontWeight.bold,
                    color: Colorz.blanco))*/
          ],
        ),
      ),
      body: Stack(
        children: [
           Image(
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
                image: AssetImage("assets/wallpapers/configuracion.jpg"),
              ),
          Container(
            margin: EdgeInsets.all(w(50)),
            padding: EdgeInsets.symmetric(vertical: w(30), horizontal: w(60)),
            color: Colorz.negro.withOpacity(0.75),
            child: Column(
              children: [
                SizedBox(height: w(30)),
                 Slide(), 
                 SizedBox(height: w(60)),
                 SlideTime(), 
                 SizedBox(height: w(60)),
                 CircularButton(
                borderColor: Colorz.blanco,
                width: 200,
                color: Colorz.rojo,
                function: (){
                  Provider.of<HomeViewModel>(context, listen: false).goToResultado(context);
                },
                height: 60,
                nameButton: 'PLAYBALL',
              )
                ],
            ),
          ),
        ],
      ),
    );
  }

}

