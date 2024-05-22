import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final List<ChartData> chartData = [
    ChartData('India', 20, 30, 40, 50),
    ChartData('UK', 40, 10, 20, 16),
    ChartData('Rwanda', 10, 50, 40, 20),
    ChartData('USA', 30, 20, 10, 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: const Text(
          'Traffic Huck',
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            // Handle navigation action here
            print('Navigation icon tapped');
          },
        ),
      ),
      body:Container(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Column(

            children: [
              Column(
                  children: [
                    Container(
                      width: 400,
                      height: 300,
                      child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <ChartSeries>[
                          StackedColumnSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData ch, _) => ch.x,
                            yValueMapper: (ChartData ch, _) => ch.y1,
                          ),
                          StackedColumnSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData ch, _) => ch.x,
                            yValueMapper: (ChartData ch, _) => ch.y1,
                          ),
                          StackedColumnSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData ch, _) => ch.x,
                            yValueMapper: (ChartData ch, _) => ch.y1,
                          ),
                          StackedColumnSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData ch, _) => ch.x,
                            yValueMapper: (ChartData ch, _) => ch.y1,
                          ),
                        ],
                      ),
                    ),
                  ]
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 250.0),  // Add margin here
                child: const Text(
                  "Average:",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),

              ),
        SizedBox(
          height: 20,),
              Container(
                margin: EdgeInsets.only(right: 50.0),  // Add margin here
                child: const Text(
                  "ALTENATIVE  ROUTS",
                  style: TextStyle(color: Colors.cyan, fontSize: 30),
                ),

              ),
              SizedBox(
                height: 20,),
              Container(
                margin: EdgeInsets.only(right: 250.0),  // Add margin here
                child: const Text(
                  "Via kk 58 st",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),

              ),
              SizedBox(
                height: 5,),
              Container(
                margin: EdgeInsets.only(right: 200.0),  // Add margin here
                child: const Text(
                  "Average:",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 18),
                ),

              ),
              SizedBox(
                height: 20,),
              Container(
                margin: EdgeInsets.only(right: 250.0),  // Add margin here
                child: const Text(
                  "Via kk 58 st",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),

              ),
              SizedBox(
                height: 5,),
              Container(
                margin: EdgeInsets.only(right: 200.0),  // Add margin here
                child: const Text(
                  "Average:",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 18),
                ),

              ),


            ],

          ),
        ),
      )


    );
  }
}

class ChartData {
  final String x;
  final int y1;
  final int y2;
  final int y3;
  final int y4;

  ChartData(this.x, this.y1, this.y2, this.y3, this.y4);
}
