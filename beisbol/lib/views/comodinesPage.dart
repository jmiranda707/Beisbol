import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:beisbol/widgets/slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ComodinesPage extends StatefulWidget {
  const ComodinesPage({Key key}) : super(key: key);

  @override
  _ComodinesPageState createState() => _ComodinesPageState();
}

class _ComodinesPageState extends State<ComodinesPage> {
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
            Text('COMODINES ',
                style: TextStyle(
                    fontSize: f(25),
                    fontWeight: FontWeight.bold,
                    color: Colorz.blanco)),
          ],
        ),
        actions: [
          
          FlatButton(
            color: Colorz.verdeOscuro,
            onPressed: () {
                      Provider.of<HomeViewModel>(context, listen: false)
                          .goToConfiguracion(context);
                    }, child: Text('Continuar', style: TextStyle(color: Colorz.blanco)))
        ],
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
            width: w(1600),
            margin: EdgeInsets.all(w(10)),
            padding: EdgeInsets.symmetric(vertical: w(5), horizontal: w(60)),
            color: Colorz.negro.withOpacity(0.75),
            child: SingleChildScrollView(
                          child: Column(
                children: [
                  SizedBox(height: w(5)),
                  _comodinIcono('equipo.jpg', 'Permite al bateador, consultar la pregunta con todo el equipo.', 'Consultar Equipo'),
                 SizedBox(height: w(10)),
                  _comodinIcono('biblia.jpg', 'El bateador puede abrir la biblia, para buscar la respuesta.', 'Consultar Biblia'),
                  SizedBox(height: w(10)),
                  //_comodinIcono('sacrificio.jpg', 'Sólo es posible si existe al menos un jugador en base y menos de 2 outs en la pizarra. Existe un 50% de probabilidad de mover a todos los jugadores embasados a cambio de 1 OUT y otro 50% de probabilidad de producir un DOBLE PLAY.', 'Toque de Bola'),
                  //SizedBox(height: w(15)),
                  _comodinIcono('cambiar.jpg', 'Elimina la pregunta actual y la cambia por una nueva pregunta.', 'Cambiar Pregunta'),
                 SizedBox(height: w(10)),
                  _comodinIcono('bateador.jpg', 'El capitan puede cambiar al bateador actual por cualquier otro jugador del equipo, excepto el capitán mismo. NOTA: esto afecta el orden de todos los bateadores.', 'Cambiar Bateador'),
                 
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _comodinIcono(String image, String descripcion, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            child: ClipOval(
                child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/logosEquipos/$image"),
              width: w(170),
              height: w(170),
            )),
            decoration: new BoxDecoration(
              color: Colorz.blanco, // border color
              shape: BoxShape.circle,
              border: new Border.all(
                width: w(5),
                color: Colorz.blanco,
              ),
            )),
            SizedBox(width: w(15),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: f(50), color: Colors.white, fontWeight: FontWeight.bold)),
                Container(
                  width: w(1200),
                  child: Text(descripcion, style: TextStyle(fontSize: f(45), color: Colors.white))),
              ],
            )
      ],
    );
  }
}
