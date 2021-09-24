import 'package:beisbol/models/equipoModel.dart';
import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:beisbol/widgets/inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SeleccioneNombre2Page extends StatefulWidget {
  const SeleccioneNombre2Page({Key key}) : super(key: key);

  @override
  _SeleccioneNombre2PageState createState() => _SeleccioneNombre2PageState();
}

class _SeleccioneNombre2PageState extends State<SeleccioneNombre2Page> {
  var controller = TextEditingController();
  
  @override
  void initState() {
    controller = new TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   Equipo equipo= Provider.of<HomeViewModel>(context).equipo2;
    ScreenUtil.init(context,
        width: SizesCustom.width,
        height: SizesCustom.height,
        allowFontScaling: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colorz.rojo,
        title: Row(
          children: [
            Text('EQUIPO 2: ', style: TextStyle(
                                fontSize: f(25),
                                fontWeight: FontWeight.bold,
                                color: Colorz.blanco)),
                                Text('Ingrese Nombre del Equipo', style: TextStyle(
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
            image: AssetImage("assets/wallpapers/nombreBackground.jpg"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                  SizedBox(height: w(30),),
              _rows(
                  equipo.logoImage,
                  equipo.color),
                  SizedBox(height: w(30),),
                  Inputs(
                    color: equipo.color,
                    controller: controller,
                    labelText: 'Texto',
                    maxlength: 10,
                  ),
                  SizedBox(height: w(80),),
                  CircularButton(
                borderColor: Colorz.blanco,
                width: 400,
                color: Colorz.rojo,
                function: (){
                  Provider.of<HomeViewModel>(context, listen: false).goToComodines(context, controller.text);
                 
                },
                height: 60,
                nameButton: 'CREAR EQUIPO',
              ),
                    Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }

  _rows(String path1, Color color1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _avatars(path1, color1),
      ],
    );
  }

  _avatars(String path, Color color) {
    return Container(
      child: CircleAvatar(
        backgroundColor: color,
        radius: w(130),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage("assets/logosEquipos/$path"),
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
