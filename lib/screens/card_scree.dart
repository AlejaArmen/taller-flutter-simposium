import 'package:flutter/material.dart';

import 'package:flutter_taller_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Tarjetas"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 15,),
          CustomCardTipo2(imgUrl: "https://static.wikia.nocookie.net/leagueoflegends/images/b/bd/Jhin_Universe_Background.jpg/revision/latest?cb=20201111084050"),
          SizedBox(height: 15,),
          CustomCardTipo2(imgTitulo: "Hola mundo" ,imgUrl: "https://static1-es.millenium.gg/articles/8/40/42/8/@/209002-jhin-lol-article_cover_bd-2.jpg",),
          SizedBox(height: 15,),
          CustomCardTipo2(imgUrl: "https://images7.alphacoders.com/887/887230.jpg",),

        ],
      )
    );
  }
}
