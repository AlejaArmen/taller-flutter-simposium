import 'package:flutter/material.dart';
import 'package:flutter_taller_app/models/models.dart';
import 'package:flutter_taller_app/screens/screens.dart';

class AppRoutes{
  static const rutaInicial = "home";

  static final menuOpc = <MenuOpciones>[
    MenuOpciones(icono: Icons.home_filled,nombre: "Pantalla Principal",pantalla: const HomeScreen(),ruta: "home",),
    MenuOpciones(ruta: "listview1", icono: Icons.list_alt_outlined, nombre: "List View 1", pantalla: const ListViewScreen()),
    MenuOpciones(ruta: "listview2", icono: Icons.pages, nombre: "List View Tipo 2", pantalla: const ListViewTipo2()),
    MenuOpciones(ruta: "card", icono: Icons.card_travel, nombre: "Tarjetas", pantalla: const CardScreen()),
    MenuOpciones(ruta: "alerta", icono: Icons.warning, nombre: "Alerta", pantalla: const AlertScreen())
  ];

  static Map<String, Widget Function(BuildContext)> obtenerRutas() {
    Map<String, Widget Function(BuildContext)> appRutas ={};
    for (final opcion in menuOpc) {
      appRutas.addAll({opcion.ruta : (BuildContext context) => opcion.pantalla});
    }
    return appRutas;
  }

  //static Map<String, Widget Function(BuildContext)> rutas =
  //  {
  //      "home" : (BuildContext context) => const HomeScreen(),
  //      "listview1" : (BuildContext context) => const ListViewScreen(),
  //      "listview2" : (BuildContext context) => const ListViewTipo2(),
  //      "card" : (BuildContext context) => const CardScreen(),
  //      "alerta" : (BuildContext context ) => const AlertScreen()
  //    };
  static Route<dynamic> generacionRutas(RouteSettings settings){
            return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}