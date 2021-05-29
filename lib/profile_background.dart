import 'package:flutter/material.dart';

class ProfileBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: screenHeight,
//      color: Color(0xFFFED90F),
      color: Color(0xFFfcdb00),

    );
  }

}