import 'package:flutter/material.dart';

class QuoteText extends StatelessWidget {

  String text = 'Lorem ipsum dolor sit amet, ea posse fugit elitr vim, ei nisl exerci signiferumque has. Cum semper delenit salutatus te, ut option periculis mel. Ipsum epicuri theophrastus sed no.';

  QuoteText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0),
      alignment: Alignment.centerLeft,
      child: Text(
        '\"$text\"',
        style: TextStyle(
          fontFamily: "Simpson",
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
