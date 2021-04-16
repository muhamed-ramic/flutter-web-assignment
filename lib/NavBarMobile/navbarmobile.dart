import 'package:flutter/material.dart';

class NavBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(54, 55, 68, 1),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        TextButton(onPressed: (){}, child: Text("Status Report", 
          style: TextStyle(
            fontSize: 12,
            color: Colors.red,
            decoration: TextDecoration.underline
        ),)),

         TextButton(onPressed: (){}, child: Text("Return / Rejected Installation Report", 
          style: TextStyle(
            color: Colors.red,
            fontSize: 12,
            decoration: TextDecoration.underline
        ),)),

         TextButton(onPressed: (){}, child: Text("Inventory Report", 
          style: TextStyle(
            fontSize: 12,
            color: Colors.red,
            decoration: TextDecoration.underline
        ),))
      ],),
    );
  }
}