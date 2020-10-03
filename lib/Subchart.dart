import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_master/Subcriberseries.dart';
import  'package:charts_flutter/flutter.dart' as charts;


class chartts extends StatelessWidget {

  final List<Subscriberseries> data;


  chartts({@required this.data});

  @override
  Widget build(BuildContext context) {
    List < charts.Series< Subscriberseries , String>> series=[
      charts.Series(
        id: "Subscribers",
        data: data,
        domainFn: (Subscriberseries series , _) =>
        series.year,
        measureFn:(Subscriberseries series , _) =>
        series.subscriber,
        colorFn: (Subscriberseries series , _) =>
        series.barColor

      )

    ];

    return Container(

      height: 400,
      child: Padding(
        padding: const EdgeInsets.only(left:10,top:10.0,right: 10),
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              Text("Records"),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
