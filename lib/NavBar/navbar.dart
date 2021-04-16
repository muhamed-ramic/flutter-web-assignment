import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(54, 55, 68, 1),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        TextButton(onPressed: (){}, child: Text("Status Report", 
          style: TextStyle(
            color: Colors.red,
            decoration: TextDecoration.underline
        ),)),
        Padding(padding: EdgeInsets.only(left: 10, right: 10), child: Text("|", style: TextStyle(color: Colors.white,),)),

         TextButton(onPressed: (){}, child: Text("Return / Rejected Installation Report", 
          style: TextStyle(
            color: Colors.red,
            decoration: TextDecoration.underline
        ),)),
        Padding(padding: EdgeInsets.only(left: 10, right: 10), child: Text("|", style: TextStyle(color: Colors.white,),)),

         TextButton(onPressed: (){}, child: Text("Inventory Report", 
          style: TextStyle(
            color: Colors.red,
            decoration: TextDecoration.underline
        ),))
      ],),
    );
  }
}