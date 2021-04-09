import 'package:flutter/material.dart';

class AppColors {
  static Color primay_Colors = Color(0xff3449bf);
  static Color white_color = Color(0xffFFFFFF);
  static Color btn_color = Color(0xfff78a88);
  static Color black_color = Color(0xff000000);
  static Color grey_color = Color(0xff707070);
  static Color light_grey_color = Color(0xffD1D1D1);
  static Color divider_color = Color(0xffF45E61);
  static Color check_due_color = Color(0xffF45E61);
  static Color container_color = Color(0xffBCE0FD);
  static Color green_color = Color(0xff35b010);
  static Color red_color = Color(0xffc90c0c);
  static Color orange_color = Color(0xffde830b);
  static Color app_color = Colors.indigo;
}

class AppFonts {
  static String roboto_regular = "Roboto";
}


Map<int, Color> appprimarycolors = {
  50: Color.fromRGBO(0, 152, 219, .1),
  100: Color.fromRGBO(0, 152, 219, .2),
  200: Color.fromRGBO(0, 152, 219, .3),
  300: Color.fromRGBO(0, 152, 219, .4),
  400: Color.fromRGBO(0, 152, 219, .5),
  500: Color.fromRGBO(0, 152, 219, .6),
  600: Color.fromRGBO(0, 152, 219, .7),
  700: Color.fromRGBO(0, 152, 219, .8),
  800: Color.fromRGBO(0, 152, 219, .9),
  900: Color.fromRGBO(0, 152, 219, 1)
};

MaterialColor appPrimaryMaterialColor =
MaterialColor(0xFF0098db, appprimarycolors);
