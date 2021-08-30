import 'package:beisbol/models/datosInningModel.dart';
import 'package:beisbol/models/equipoModel.dart';
import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ResultadoPage extends StatelessWidget {
  const ResultadoPage({Key key}) : super(key: key);

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
                 Expanded(child: SizedBox(),),
                 Container(
                   child: 
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('                              Inning ', style: TextStyle(color: Colorz.amarillo, fontSize: f(60), fontWeight: FontWeight.normal)),
                       Text(datos.inningActual.toString(), style: TextStyle(color: Colorz.naranja, fontSize: f(60), fontWeight: FontWeight.normal)),
                       Icon( (datos.abriendoCerrando=='abriendo')?Icons.arrow_drop_up:Icons.arrow_drop_down, color: Colorz.naranja, size: w(70))
                     ],
                   )
                 ),
                 Container(
                   margin: EdgeInsets.symmetric(horizontal: w(400)),
                   color: Colorz.negro.withOpacity(0.75),
                   padding: EdgeInsets.all(w(10)),
                   child: Column(
                     children: [
                       _rowEquipo(equipo1),
                                        SizedBox(height: w(10)),
                                        Divider(color: Colorz.blanco, thickness: 3,),
                                        SizedBox(height: w(10)),
                      _rowEquipo(equipo2),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: w(50)),
                                        CircularButton(
                borderColor: Colorz.blanco,
                width: 250,
                color: Colorz.rojo,
                function: (){
                  Provider.of<HomeViewModel>(context, listen: false).goToPartido(context);
                },
                height: 60,
                nameButton: 'CONTINUAR',
              ),
                                        Expanded(child: SizedBox(),),
                                    
                                   ],
                                 ),
                               ],
                             ),
                           );
                         }
                       
                      /* _avatars(String path, Color color, BuildContext context) {
                         
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
                               }*/
                       
                         _rowEquipo(Equipo equipo) {
                           return Row(children: [
                   //_avatars(equipo1.logoImage, equipo1.color, context),
                   Image(
                     width: w(170),
            fit: BoxFit.contain,
            image: AssetImage("assets/logosEquipos/${equipo.logoImage}"),
          ),
                    SizedBox(width: w(5)),
                   Container(
                     width: w(400),
                     child: Text(equipo.nombre, style: TextStyle(color: Colorz.blanco, fontSize: f(80), fontWeight: FontWeight.bold))),
                     Container(
                       width: w(190),
                       color: equipo.color,
                     child: Center(child: Text(equipo.carreras.toString(), style: TextStyle(color: Colorz.blanco, fontSize: f(120), fontWeight: FontWeight.bold))))
                     
                 ],);
                         }
      
}