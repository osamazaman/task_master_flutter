import 'package:flutter/material.dart';
import 'package:task_master/Subchart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:task_master/Subcriberseries.dart';

class page extends StatelessWidget {
  final List<Subscriberseries> data =[

    Subscriberseries(
      year: "2014",
      subscriber: 7000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    Subscriberseries(
        year: "2015",
        subscriber: 6500,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    Subscriberseries(
        year: "2016",
        subscriber: 5000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    Subscriberseries(
        year: "2017",
        subscriber: 8000,
        barColor: charts.ColorUtil.fromDartColor(Colors.red)
    )

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:chartts(
          data: data,
        )

      ),

    );
  }
}
