import 'package:flutter/material.dart';

class UiConfig {
  UiConfig._();

  static String get title => 'Cuidapet';

  static ThemeData get theme => ThemeData(
    primaryColor: Color(0xffA8CE4B),
    primaryColorDark: Color(0xff689F38),
    primaryColorLight: Color(0xffDDE9C7),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xffA8CE4B)
    )
  );
}
