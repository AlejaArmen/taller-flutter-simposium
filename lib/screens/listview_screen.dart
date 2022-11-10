import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);
  final opciones = const ["Opcion 1", "Opcion 2", "Opcion 3", "Opcion 4","Opcion 5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Taller flutter"),
          elevation: 0,
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: ListView(
          children:[
            ...opciones.map((opc) => ListTile(
              leading: const Icon(Icons.add_circle_outline_rounded),
              title: Text(opc),)).toList(),
            //ListTile(
            //  title: Text("Hola mundo"),
            //)
          ],
        ));
  }
}
