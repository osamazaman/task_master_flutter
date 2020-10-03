import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Subscriberseries{
  final String year;
  final int subscriber;
  final charts.Color barColor;

  Subscriberseries({
      @required this.year,
      @required this.subscriber,
      @required this.barColor});

}

