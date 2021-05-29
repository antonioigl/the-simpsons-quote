import 'package:flutter/material.dart';

class QuoteImage extends StatelessWidget {

  String pathImage = 'https://cdn.glitch.com/3c3ffadc-3406-4440-bb95-d40ec8fcde72%2FNelsonMuntz.png?1497567511185';

  QuoteImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 250,
          height: 250,
          child: Image.network(pathImage),
        )
      ],
    );
  }
}
