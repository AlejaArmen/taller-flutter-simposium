import 'package:flutter/material.dart';
import 'package:flutter_taller_app/theme/app_theme.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({Key? key,
  required this.imgUrl,
  this.imgTitulo
  }) : super(key: key);

  final String imgUrl;
  final String? imgTitulo;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      shadowColor: Colors.white,
      child: Column(
        children: [
          FadeInImage(placeholder: const AssetImage("assets/jar-loading.gif"), image: NetworkImage(imgUrl),
          width: double.infinity,
          height: 194),
          if (imgTitulo != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, left: 10, right: 15, bottom: 10),
              child: Text(imgTitulo!, style: const TextStyle(fontWeight: FontWeight.bold ,color: AppTheme.colorSubtitulo),))
              ]
      ),
    );
  }
}