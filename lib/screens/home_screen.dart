import 'package:flutter/material.dart';
import 'package:flutter_taller_app/models/models.dart';
import 'package:flutter_taller_app/router/app_routes.dart';
import 'package:flutter_taller_app/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  final appRutas = AppRoutes.menuOpc;
    return Scaffold(
      appBar: AppBar(
        title: Text("Taller flutter"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(appRutas[index].nombre),
                leading: Icon(appRutas
                [index].icono, color: AppTheme.colorIconos),
                trailing: const Icon(Icons.arrow_forward_ios_sharp, color: AppTheme.colorIconos,),
                onTap: () {
                  //final route = MaterialPageRoute(builder: (context) => const ListViewTipo2(),);
                  //Navigator.push(context, route);
                  Navigator.pushNamed(context, appRutas[index].ruta );
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: appRutas.length),
    );
  }
}
