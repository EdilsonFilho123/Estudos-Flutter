import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class TodoListUiConfig {
  TodoListUiConfig._();

  static ThemeData get theme => ThemeData(
    fontFamily: 'Mandali',
    primaryColor: Color(0xff5c77ce),
    primaryColorLight: Color(0xffabc8f7),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff5c77ce),
        textStyle: TextStyle(color: Colors.white),
      ),
    ),
  );
}
