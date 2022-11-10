import 'package:flutter/material.dart';
import 'package:flutter_taller_app/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        elevation: 0,
        title: const Text("Titutlo"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const[
            Text("Esto es un texto"),
            SizedBox(height: 8,),
            FlutterLogo(size: 80,)
          ],
        ),
        actions: [
          TextButton(onPressed: ()=>Navigator.pop(context), child: const Text("Cancelar", style: TextStyle(color: AppTheme.colorIconos),))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(child: const Text("Mostrar alerta"), onPressed: ()=> displayDialog(context)),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=> Navigator.pop(context),
      child: const Icon(Icons.close),),
    );
  }
}