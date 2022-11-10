import 'package:flutter/material.dart';
import 'package:flutter_taller_app/theme/app_theme.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text(
              "Soy un titulo",
              style: TextStyle(color: AppTheme.colorIconos),
            ),
            leading: Icon(
              Icons.adb,
              color: AppTheme.colorIconos,
            ),
            subtitle: Text(
              "Et cupidatat cupidatat non quis nulla nulla ullamco qui ut pariatur consectetur. Mollit dolore duis ex officia. Non minim aute labore enim anim culpa sit nulla ipsum mollit laborum. Elit laborum esse ea nostrud excepteur officia. Cupidatat ex cillum in id eu aute ipsum nostrud consectetur labore dolore sint. Dolor sit culpa qui eiusmod duis aliqua consectetur et proident sit. Ad veniam officia qui quis anim tempor non id.",
              style: TextStyle(color: AppTheme.colorSubtitulo),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, bottom: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text("Ok"),
                    style: TextButton.styleFrom(primary: Colors.green)),
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancelar"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
