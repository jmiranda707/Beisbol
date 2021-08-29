import 'package:beisbol/settings/persistence.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

final PersistenceLocal prefs = new PersistenceLocal();
class SizesCustom {
  SizesCustom._();

  static const double width = 480;
  static const double height = 854;
}

 getSizeDevice(BuildContext context){
 prefs.widthDevice= Get.width;//size.width;
 prefs.heightDevice= Get.height;//size.height;
}
//responsive
double w(double width) {
  double size=width;
  if (prefs.widthDevice <= 500) {
    size = width * 1;
  }
  if(prefs.widthDevice > 500 && prefs.widthDevice < 599){
   size = width * 0.85;
   }
  if(prefs.widthDevice>=600 && prefs.widthDevice < 800){
   size = width * 0.75;
   }
   if(prefs.widthDevice>=800 && prefs.widthDevice < 1000){
   size = width * 0.65;
   }
   if(prefs.widthDevice>=1000 && prefs.widthDevice < 1200){
   size = width * 0.35;
   }
   if(prefs.widthDevice>=1200){
   size = width * 0.30;
   }
  return size.w;
}

double h(double height) {
  double size=height;
  if (prefs.widthDevice <= 500 ) {
    size = height * 1;
  }
  if(prefs.widthDevice>500 && prefs.widthDevice < 599){
   size = height * 0.85;
   }
   if(prefs.widthDevice>=600 && prefs.widthDevice < 800){
   size = height * 0.75;
   }
   if(prefs.widthDevice>=800 && prefs.widthDevice < 1000){
   size = height * 0.65;
   }
   if(prefs.widthDevice>=1000 && prefs.widthDevice < 1200){
   size = height * 0.35;
   }
   if(prefs.widthDevice>=1200){
   size = height * 0.30;
   }
  return size.h;
}

double f(double fontSize) {
  double size=fontSize;
  if (prefs.widthDevice <= 500) {
    size = fontSize * 1;
  }
  if(prefs.widthDevice>500 && prefs.widthDevice < 599){
   size = fontSize * 0.85;
   }
   if(prefs.widthDevice>=600 && prefs.widthDevice < 800){
   size = fontSize * 0.75;
   }
   if(prefs.widthDevice>=800 && prefs.widthDevice < 1000){
   size = fontSize * 0.65;
   }
   if(prefs.widthDevice>=1000 && prefs.widthDevice < 1200){
   size = fontSize * 0.35;
   }
   if(prefs.widthDevice>=1200){
   size = fontSize * 0.30;
   }
  return size.sp;
}

