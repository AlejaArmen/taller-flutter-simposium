import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewTipo2 extends StatelessWidget {
  const ListViewTipo2({Key? key}) : super(key: key);
  final opciones = const ["Opc 1","Opc2","Opc3","Opc4"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView2"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
        return ListTile(title: Text(opciones[index]),
        onTap: () {
          final nomOpc = opciones[index];
          print(nomOpc);
        },
        );
      },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: opciones.length)
    );
  }
}