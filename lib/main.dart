import 'package:assignment/TotalCountBox/totalcountbox.dart';
import 'package:assignment/TotalCountHeaderBox/totalcountheaderbox.dart';
import 'package:flutter/material.dart';
import 'HomePageTablet/homepagetablet.dart';
import 'HomePageMobile/homepagemobile.dart';
import 'NavBar/navbar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > 1290) {
          return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePageDesktop(),
          debugShowCheckedModeBanner: false,
        );
        } else if (constraints.minWidth > 768 && constraints.maxWidth < 1290) {
          return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePageTablet(),
          debugShowCheckedModeBanner: false,
        );
        } else {
          return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePageMobile(),
          debugShowCheckedModeBanner: false,
        );
        }
      }
    );
  }
}

 class ChartData {
  ChartData(this.x, this.y, [this.color]);
    final String x;
    final double y;
    final Color color;
  }


class MyHomePageDesktop extends StatelessWidget {
  final List<ChartData> chartData = [
            ChartData('David', 25),
            ChartData('Steve', 38),
            ChartData('Jack', 34),
            ChartData('Others', 52)
    ];
  @override
  Widget build(BuildContext context) {
  final oneSixWidthOfBox = (MediaQuery.of(context).size.width * 0.2 + MediaQuery.of(context).size.width * 0.2) / 3;
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
              child:  NavBar()
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
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          color: Color.fromRGBO(54, 55, 68, 1),
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Text("Deployment \n Safety",
                           textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 34, color: Colors.white))
                        ),
                        SizedBox(height: 15),
                        TotalCountBox("714", MediaQuery.of(context).size.width * 0.2, Color.fromRGBO(54, 55, 68, 1), "Max days without incidents"),
                        SizedBox(height: 7),
                        TotalCountBox.withIconAndSubHeader("-", MediaQuery.of(context).size.width * 0.2, Color.fromRGBO(54, 55, 68, 1), "Number of Incidents Month over Month", 9, Icon(
                          Icons.arrow_upward,
                          color: Colors.red,size: 26.0), "Unknown"),
                        SizedBox(height: 7),
                        TotalCountBox.withIconAndSubHeader("1", MediaQuery.of(context).size.width * 0.2, Color.fromRGBO(54, 55, 68, 1), "Number of Incidents Month over Month", 9, Icon(
                          Icons.beach_access,
                          color: Colors.red,size: 26.0), "Sep 2019: 1"),
                        SizedBox(height: 7),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          color: Color.fromRGBO(54, 55, 68, 1),
                          child: Center(
                            child: SfCircularChart(
                        series: <CircularSeries>[
                            // Render pie chart
                            PieSeries<ChartData, String>(
                                dataSource: chartData,
                                pointColorMapper:(ChartData data,  _) => data.color,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y
                             )
                            ]
                           )
                          )
                        )
                      ]
                    )
                  ),
                  //Right side
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TotalCountHeaderBox("Network Gateway Center", MediaQuery.of(context).size.width * 0.8 - 40),
                      SizedBox(height: 15),
                      TotalCountBox("2614", MediaQuery.of(context).size.width * 0.8 - 40, Color.fromRGBO(9, 0, 0, 1), "Total"),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TotalCountBox("694", MediaQuery.of(context).size.width * 0.2, Color.fromRGBO(12, 151, 17, 1), "Awaiting Survey"),
                          SizedBox(width: 10),
                          TotalCountBox("13", MediaQuery.of(context).size.width * 0.2 - 10, Color.fromRGBO(12, 151, 17, 1), "Survey Assigned"),
                          SizedBox(width: 10),
                          TotalCountBox("13", MediaQuery.of(context).size.width * 0.2 - 10, Color.fromRGBO(12, 151, 17, 1), "Survey On Hold"),
                          SizedBox(width: 10),
                          TotalCountBox("13", MediaQuery.of(context).size.width * 0.2 - 50, Color.fromRGBO(12, 151, 17, 1), "Pending Design Approval"),
                        ]
                      ),
                      SizedBox(height: 15),
                      
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TotalCountBox("694", oneSixWidthOfBox, Color.fromRGBO(30, 104, 13, 1), "New Ameren Approval"),
                          SizedBox(width: 10),
                          TotalCountBox("13", oneSixWidthOfBox - 10, Color.fromRGBO(30, 104, 13, 1), "Pending Ameren Approval"),
                          SizedBox(width: 10),
                          TotalCountBox("13", oneSixWidthOfBox - 10, Color.fromRGBO(30, 104, 13, 1), "Ameren Rejected"),
                          SizedBox(width: 10),
                          TotalCountBox("13", oneSixWidthOfBox - 10, Color.fromRGBO(30, 104, 13, 1), "Awaiting Installation"),
                          SizedBox(width: 10),
                          TotalCountBox("13", oneSixWidthOfBox - 10, Color.fromRGBO(30, 104, 13, 1), "Installations Assigned"),
                          SizedBox(width: 10),
                          TotalCountBox("13", oneSixWidthOfBox - 50, Color.fromRGBO(30, 104, 13, 1), "Installed"),
                        ]
                      ),
                      SizedBox(height: 15),
                      TotalCountHeaderBox("Router Counts", MediaQuery.of(context).size.width * 0.8 - 40),
                      SizedBox(height: 15),
                      TotalCountBox("1820", MediaQuery.of(context).size.width * 0.8 - 40, Color.fromRGBO(9, 0, 0, 1), "Total"),
                      SizedBox(height: 15),
                       Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TotalCountBox("694", MediaQuery.of(context).size.width * 0.2, Color.fromRGBO(12, 151, 17, 1), "Awaiting Survey"),
                          SizedBox(width: 10),
                          TotalCountBox("13", MediaQuery.of(context).size.width * 0.2 - 10, Color.fromRGBO(12, 151, 17, 1), "Survey Assigned"),
                          SizedBox(width: 10),
                          TotalCountBox("13", MediaQuery.of(context).size.width * 0.2 - 10, Color.fromRGBO(12, 151, 17, 1), "Survey On Hold"),
                          SizedBox(width: 10),
                          TotalCountBox("13", MediaQuery.of(context).size.width * 0.2 - 50, Color.fromRGBO(12, 151, 17, 1), "Pending Design Approval"),
                        ]
                      ),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TotalCountBox("694", oneSixWidthOfBox, Color.fromRGBO(30, 104, 13, 1), "New Ameren Approval"),
                          SizedBox(width: 10),
                          TotalCountBox("13", oneSixWidthOfBox - 10, Color.fromRGBO(30, 104, 13, 1), "Pending Ameren Approval"),
                          SizedBox(width: 10),
                          TotalCountBox("13", oneSixWidthOfBox - 10, Color.fromRGBO(30, 104, 13, 1), "Ameren Rejected"),
                          SizedBox(width: 10),
                          TotalCountBox("13", oneSixWidthOfBox - 10, Color.fromRGBO(30, 104, 13, 1), "Awaiting Installation"),
                          SizedBox(width: 10),
                          TotalCountBox("13", oneSixWidthOfBox - 10, Color.fromRGBO(30, 104, 13, 1), "Installations Assigned"),
                          SizedBox(width: 10),
                          TotalCountBox("13", oneSixWidthOfBox - 50, Color.fromRGBO(30, 104, 13, 1), "Installed"),
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
