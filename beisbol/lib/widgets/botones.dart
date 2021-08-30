import 'package:beisbol/settings/responsive.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton(
      {@required this.width,
      @required this.height,
      @required this.function,
      @required this.color,
      @required this.nameButton,
      @required this.borderColor});
  final double height;
  final double width;
  final Function function;
  final Color color;
  final Color borderColor;
  final String nameButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(width),
      height: w(height),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(w(35)),
            side: BorderSide(color: borderColor)),
        textColor: Colors.white,
        onPressed: function,
        color: color,
        child: Text(
          nameButton,
          style: TextStyle(fontSize: f(20)),
        ),
      ),
    );
  }
}

class IconRectangularButton extends StatelessWidget {
  const IconRectangularButton(
      {@required this.width,
      @required this.height,
      @required this.function,
      @required this.color,
      @required this.nameButton,
      @required this.borderColor,
      @required this.icon,
      @required this.iconColor
      });
  final double height;
  final double width;
  final Function function;
  final Color color;
  final Color borderColor;
  final String nameButton;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(width),
      height: w(height),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(w(15)),
            side: BorderSide(color: borderColor)),
        textColor: Colors.white,
        onPressed: function,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nameButton,
              style: TextStyle(fontSize: f(20)),
            ),
            SizedBox(width: w(10),),
            Icon(icon, size: w(50), color: iconColor)
          ],
        ),
      ),
    );
  }
}
