import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/persistence.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Slide extends StatefulWidget {
  Slide({Key key}) : super(key: key);

  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  PersistenceLocal prefs = new PersistenceLocal();
  double value = 3.0;
 
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
                '1. Seleccione la cantidad de Innings a jugar:',
                style: TextStyle(fontSize: f(30), color: Colorz.blanco)),
                SizedBox(width: w(20)),
                Icon(Icons.sports_baseball, size: w(70), color: Colorz.blanco),
          ],
        ),
        
        SizedBox(height: w(20)),
        SfSlider(
          min: 3.0,
          max: 7.0,
          value: value,
          labelPlacement: LabelPlacement.onTicks,
          interval: 1,
          showTicks: true,
          showLabels: true,
          enableTooltip: true,
          minorTicksPerInterval: 0,
          activeColor: Colorz.rojo,
          inactiveColor: Colors.blueGrey,
          
          showDivisors: false,
          stepSize: 1,
          labelFormatterCallback: (dynamic actualValue, String formattedText) {
            return (actualValue == 3)
                ? '3'
                : (actualValue == 4)
                    ? '4'
                    : (actualValue == 5)
                    ? '5'
                    : (actualValue == 6)
                    ? '6'
                    : '7';
          },
          onChanged: (dynamic newValue) {
            setState(() {
              value = newValue;
              Provider.of<HomeViewModel>(context, listen: false).inningSelected = value.toInt();
            });
          },
        ),
        SizedBox(height: w(20)),
      ],
    );
  }
}


class SlideTime extends StatefulWidget {
  SlideTime({Key key}) : super(key: key);

  @override
  _SlideTimeState createState() => _SlideTimeState();
}

class _SlideTimeState extends State<SlideTime> {
  PersistenceLocal prefs = new PersistenceLocal();
  double value = 30.0;
 
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
                '2. Seleccione el tiempo para responder cada pregunta:',
                style: TextStyle(fontSize: f(30), color: Colorz.blanco)),
                SizedBox(width: w(20)),
                 Icon(Icons.timer, size: w(70), color: Colorz.blanco),
          ],
        ),
        SizedBox(height: w(20)),
        SfSlider(
          min: 30.0,
          max: 120.0,
          value: value,
          labelPlacement: LabelPlacement.onTicks,
          interval: 30.0,
          showTicks: true,
          showLabels: true,
          enableTooltip: true,
          minorTicksPerInterval: 1,
          stepSize: 30.0,
          activeColor: Colorz.rojo,
          inactiveColor: Colors.blueGrey,
          showDivisors: false,
          labelFormatterCallback: (dynamic actualValue, String formattedText) {
            return (actualValue == 30.0)
                ? '30'
                : (actualValue == 60.0)
                    ? '60'
                    : (actualValue == 90.0)
                    ? '90': (actualValue == 120.0)
                    ? '120'
                    : '30';
          },
          onChanged: (dynamic newValue) {
            setState(() {
              value = newValue;
              Provider.of<HomeViewModel>(context, listen: false).timeSelected = value.toInt();
            });
          },
        ),
        SizedBox(height: w(20)),
      ],
    );
  }
}