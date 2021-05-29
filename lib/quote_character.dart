import 'package:flutter/material.dart';

class QuoteCharacter extends StatelessWidget {

  String characterName = 'Nelson';

  QuoteCharacter(this.characterName);

  @override
  Widget build(BuildContext context) {
    return Container(
    alignment: Alignment.centerRight,
    margin: EdgeInsets.only(left: 20.0, top: 50, right: 20.0, bottom: 20.0),
      child: Text(
        '-$characterName-',
        style: TextStyle(
          fontFamily: "Simpson",
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
