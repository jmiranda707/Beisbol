import 'package:beisbol/models/equipoModel.dart';
import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ResultadoPage extends StatelessWidget {
  const ResultadoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Equipo equipo1 = Provider.of<HomeViewModel>(context).equipo1;
    Equipo equipo2 = Provider.of<HomeViewModel>(context).equipo2;
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
      ),
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
              
                 Row(children: [
                   _avatars(equipo1.logoImage, equipo1.color, context),
                   Text(equipo1.nombre, style: TextStyle(color: Colorz.blanco, fontSize: f(80), fontWeight: FontWeight.bold))
                 ],),
                 SizedBox(height: w(30)),
                 Row(children: [
                   _avatars(equipo2.logoImage, equipo2.color, context),
                   Text(equipo2.nombre, style: TextStyle(color: Colorz.blanco, fontSize: f(80), fontWeight: FontWeight.bold))
                 ],)
             
            ],
          ),
        ],
      ),
    );
  }

_avatars(String path, Color color, BuildContext context) {
  
    return Container(
      child: CircleAvatar(
        backgroundColor: color.withOpacity(0.9),
        radius: w(80),
        child: InkWell(
                onTap: ()=>  Provider.of<HomeViewModel>(context, listen:false).goToNombreEquipo2(context, path, color)
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
      
}