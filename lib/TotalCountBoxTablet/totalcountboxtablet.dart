import 'package:flutter/material.dart';

class TotalCountBoxTablet extends StatelessWidget {
  TotalCountBoxTablet(this.count, this.passedWidth, this.containerBackgroundColor, this.text);

  TotalCountBoxTablet.withHeaderFontSize(this.count, this.passedWidth, this.containerBackgroundColor, this.text, this.fontSize);
  TotalCountBoxTablet.withIconAndSubHeader(this.count, this.passedWidth, this.containerBackgroundColor, this.text, this.fontSize, this.icon, this.subHeader);

  String count;
  String text;
  Color containerBackgroundColor;
  double passedWidth;
  double fontSize = 12;
  Icon icon;
  String subHeader;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        width: passedWidth,
        decoration: BoxDecoration(
            color: containerBackgroundColor,
            border: Border(
                top: BorderSide(
                    color: Color.fromRGBO(100, 104, 131, 1), width: 2))),
        child: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Column(children: <Widget>[
              Text(text,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: fontSize, color: Colors.white)),
              SizedBox(height: 10),
              icon == null ? 
                Text(count,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: Colors.white)):
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(count,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: Colors.white)),
                  Padding(padding: EdgeInsets.only(left: 5), child: icon)
                ]
              ),
              subHeader != null ?
              Text(subHeader, style: TextStyle(fontSize: 9, color: Colors.white)): Text("")
            ])));
  }
}
