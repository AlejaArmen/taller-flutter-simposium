import 'package:flutter/material.dart';
import 'package:flutter_taller_app/router/app_routes.dart';

import 'package:flutter_taller_app/screens/screens.dart';
import 'package:flutter_taller_app/theme/app_theme.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: AlertScreen(),
      initialRoute: AppRoutes.rutaInicial,
      routes: AppRoutes.obtenerRutas(),
      onGenerateRoute: AppRoutes.generacionRutas,
      theme: AppTheme.temaDark,
    );
  }
}