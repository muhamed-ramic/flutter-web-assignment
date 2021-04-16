import 'package:flutter/material.dart';

class TotalCountHeaderBox extends StatelessWidget {
  TotalCountHeaderBox(this.text, this.passedWidth);
  TotalCountHeaderBox.withFontSize(this.text, this.passedWidth, this.fontSize);

  String text;
  double passedWidth;
  double fontSize = 34;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: passedWidth,
        color: Color.fromRGBO(54, 55, 68, 1),
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize, color: Colors.white)));
  }
}
