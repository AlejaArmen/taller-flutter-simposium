import 'package:flutter/material.dart';

class AppTheme {
  static const Color primarioLight = Colors.cyan;
  static const Color primarioDark = Colors.purple;
  static const Color colorIconos = Colors.deepOrange;
  static const Color colorSubtitulo = Colors.orange;
  static const Color colorBotones = Colors.yellow;

  static final ThemeData temaLight = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
    centerTitle: true,
    color: primarioLight,
    elevation: 0,
  ));
  static final ThemeData temaDark = ThemeData.dark().copyWith(
    //Tema del AppBar
    appBarTheme: const AppBarTheme(
    centerTitle: true,
    color: primarioDark,
    elevation: 0,
  ),
  //Tema del Scafol
  scaffoldBackgroundColor: Colors.black,

  //Tema del TextButton
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: colorBotones)),
  //Tema de botton flotante
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: colorIconos,
    splashColor: colorBotones,
    foregroundColor: Colors.white
  ),
  //Tema del boton mostrar
  elevatedButtonTheme:  ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.red,
      shape: const StadiumBorder(),
      elevation: 10,
      shadowColor: Colors.white,
      textStyle: const TextStyle(fontSize: 25)
    ),
    )
  );

}
