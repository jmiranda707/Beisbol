import 'package:audioplayers/audioplayers.dart';
import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/widgets/botones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:audioplayers/audio_cache.dart';

class BienvenidaPage extends StatefulWidget {
  const BienvenidaPage({Key key}) : super(key: key);
  
  

  @override
  _BienvenidaPageState createState() => _BienvenidaPageState();
}

class _BienvenidaPageState extends State<BienvenidaPage> {

  @override
  void initState() { 
     playLocal();
    super.initState();
  }

  playLocal() async {
    final player= AudioCache();
    await player.play('audios/tararara.mp3',);
  
  }
  detener() async{
    final player= AudioCache();
     player.clearCache();
  }

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
              SizedBox(
                height: w(210),
              ),
             
              Center(
                  child: Text('BEISBOL BÍBLICO',
                      style: TextStyle(
                          fontSize: f(130),
                          fontWeight: FontWeight.bold,
                          color: Colorz.amarillo))),
              Center(
                  child: Text('Célula de Vista Hermosa',
                      style: TextStyle(
                          fontSize: f(100),
                          fontWeight: FontWeight.bold,
                          color: Colorz.amarillo))),
              SizedBox(
                height: w(160),
              ),
              CircularButton(
                borderColor: Colorz.blanco,
                width: 200,
                color: Colorz.rojo,
                function: () {
                  detener();
                  Navigator.pushNamed(context, 'seleccioneLogo');
                },
                height: 60,
                nameButton: 'COMENZAR',
              )
            ],
          ),
           
        ],
      ),
    );
   
  }
}
