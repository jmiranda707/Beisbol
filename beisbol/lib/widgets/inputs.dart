import 'package:beisbol/settings/colorz.dart';
import 'package:beisbol/settings/responsive.dart';
import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  const Inputs(
      {@required this.labelText,
      @required this.controller,
      @required this.maxlength,
      @required this.color,});
  final TextEditingController controller;
  final String labelText;
  final int maxlength;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
    height: w(98),
    width: w(500),
    child: TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      cursorColor: color,
      cursorWidth: 0.4,
      maxLength: maxlength,
      style: TextStyle(
        height: 1,
        fontSize: f(25),
        color: Colorz.rojo
      ),
      onTap: () {},
      decoration: InputDecoration(
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(w(35)),
          borderSide: BorderSide(color: Colorz.negro),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(w(35)),
          borderSide: BorderSide(color: Colors.black54),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        filled: true,
        fillColor: Colorz.blanco,
        labelStyle: TextStyle(color: color, fontSize: f(25), fontWeight: FontWeight.bold, ),
        contentPadding: EdgeInsets.all(w(30)),
      ),
    ),
   );
  }
}
