import 'package:flutter/material.dart';
import '../NavBarMobile/navbarmobile.dart';
import 'package:assignment/TotalCountBoxTablet/TotalCountBoxTablet.dart';
import 'package:assignment/TotalCountHeaderBox/totalcountheaderbox.dart';

class MyHomePageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(45, 47, 58, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text("Ameren Customer Status Dashboard", style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child:  NavBarMobile()
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Customer name:", style: TextStyle(color: Colors.white)),
                        Container(
                          child: DropdownButton(
                          value: "One",
                          style: const TextStyle(color: Colors.white),
                          items: <String>['One', 'Two', 'Free', 'Four'].
                        map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(color: Colors.white)),
                          );
                        }).toList()))
                      ]
                    )
                    ,
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Operating center :", style: TextStyle(color: Colors.white)),
                        Container(
                          child: DropdownButton(
                          value: "Select",
                          style: const TextStyle(color: Colors.white),
                          items: <String>['Select','One', 'Two', 'Free', 'Four'].
                        map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(color: Colors.white)),
                          );
                        }).toList()))
                      ]
                    )
                  ]
                ),
              )
            ),
            Padding( //Left side body start
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          color: Color.fromRGBO(54, 55, 68, 1),
                          width: MediaQuery.of(context).size.width,
                          child: Text("Deployment \n Safety",
                           textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.white))
                        ),
                        SizedBox(height: 15),
                        TotalCountBoxTablet("714", MediaQuery.of(context).size.width, Color.fromRGBO(54, 55, 68, 1), "Max days without incidents"),
                        SizedBox(height: 7),
                        TotalCountBoxTablet.withIconAndSubHeader("-", MediaQuery.of(context).size.width, Color.fromRGBO(54, 55, 68, 1), "Number of Incidents Month over Month", 9, Icon(
                          Icons.arrow_upward,
                          color: Colors.red,size: 26.0), "Unknown"),
                        SizedBox(height: 7),
                         TotalCountBoxTablet.withIconAndSubHeader("1", MediaQuery.of(context).size.width, Color.fromRGBO(54, 55, 68, 1), "Number of Incidents Month over Month", 9, Icon(
                          Icons.beach_access,
                          color: Colors.red,size: 26.0), "Sep 2019: 1")
                      ]
                    )
                  ), ////Left side body end
                  //Right side bod start
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TotalCountHeaderBox.withFontSize("Network Gateway Center", MediaQuery.of(context).size.width, 18),
                      SizedBox(height: 15),
                      TotalCountBoxTablet("2614", MediaQuery.of(context).size.width, Color.fromRGBO(9, 0, 0, 1), "Total"),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TotalCountBoxTablet("694", (MediaQuery.of(context).size.width -20) / 2, Color.fromRGBO(12, 151, 17, 1), "Awaiting Survey"),
                          SizedBox(width: 10),
                          TotalCountBoxTablet("13", (MediaQuery.of(context).size.width - 20) / 2, Color.fromRGBO(12, 151, 17, 1), "Survey Assigned"),
                        ]
                      ),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TotalCountBoxTablet("13", (MediaQuery.of(context).size.width - 20) / 2, Color.fromRGBO(12, 151, 17, 1), "Survey On Hold"),
                          SizedBox(width: 10),
                          TotalCountBoxTablet("13", (MediaQuery.of(context).size.width - 20) / 2, Color.fromRGBO(12, 151, 17, 1), "Pending Design Approval"),
                        ]
                      ),
                      SizedBox(height: 15),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TotalCountBoxTablet("694", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "New Ameren Approval"),
                          SizedBox(height: 10),
                          TotalCountBoxTablet("13", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "Pending Ameren Approval"),
                          SizedBox(height: 10),
                          TotalCountBoxTablet("13", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "Ameren Rejected"),
                          SizedBox(height: 10),
                          TotalCountBoxTablet("13", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "Awaiting Installation"),
                          SizedBox(height: 10),
                          TotalCountBoxTablet("13", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "Installations Assigned"),
                          SizedBox(height: 10),
                          TotalCountBoxTablet("13", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "Installed"),
                        ]
                      ),
                      SizedBox(height: 15),
                      TotalCountHeaderBox.withFontSize("Router Counts", MediaQuery.of(context).size.width, 18),
                      SizedBox(height: 15),
                      TotalCountBoxTablet("1820", MediaQuery.of(context).size.width, Color.fromRGBO(9, 0, 0, 1), "Total"),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TotalCountBoxTablet("694", (MediaQuery.of(context).size.width - 20) / 2, Color.fromRGBO(12, 151, 17, 1), "Awaiting Survey"),
                          SizedBox(width: 10),
                          TotalCountBoxTablet("13", (MediaQuery.of(context).size.width - 20) / 2, Color.fromRGBO(12, 151, 17, 1), "Survey Assigned"),
                        ]
                      ),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TotalCountBoxTablet("13", (MediaQuery.of(context).size.width - 20) / 2, Color.fromRGBO(12, 151, 17, 1), "Survey On Hold"),
                          SizedBox(width: 10),
                          TotalCountBoxTablet("13", (MediaQuery.of(context).size.width - 20) / 2, Color.fromRGBO(12, 151, 17, 1), "Pending Design Approval"),
                        ]
                      ),
                      SizedBox(height: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TotalCountBoxTablet("694", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "New Ameren Approval"),
                          SizedBox(height: 10),
                          TotalCountBoxTablet("13", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "Pending Ameren Approval"),
                          SizedBox(height: 10),
                          TotalCountBoxTablet("13", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "Ameren Rejected"),
                          SizedBox(height: 10),
                          TotalCountBoxTablet("13", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "Awaiting Installation"),
                          SizedBox(height: 10),
                          TotalCountBoxTablet("13", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "Installations Assigned"),
                          SizedBox(height: 10),
                          TotalCountBoxTablet("13", MediaQuery.of(context).size.width, Color.fromRGBO(30, 104, 13, 1), "Installed"),
                        ]
                      ),
                      SizedBox(height: 45),
                    ]
                  )
                ]
              )
            )
        ],),
      )),
    );
  }
}