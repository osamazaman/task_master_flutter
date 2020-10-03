import 'package:flutter/material.dart';
import 'package:task_master/AcceptJobs.dart';
import 'package:task_master/AcceptJobsAvailable.dart';
import 'package:task_master/AcceptanceView.dart';
import 'package:task_master/Areas.dart';
import 'package:task_master/BookedMap.dart';
import 'package:task_master/Calendar.dart';
import 'package:task_master/Home.dart';
import 'package:task_master/HelpVids.dart';
import 'package:task_master/MyDay.dart';
import 'package:task_master/MyFinancials.dart';
import 'package:task_master/MyStats.dart';
import 'package:task_master/PickupCard.dart';
import 'package:task_master/Profile.dart';
import 'package:task_master/QuickTaskVideos.dart';
import 'package:task_master/ResetPw.dart';
import 'package:task_master/SearchJobs.dart';
import 'package:task_master/booked.dart';
import 'package:task_master/dashboard.dart';
import 'package:task_master/drawer.dart';
import 'package:task_master/paidFinancial.dart';
import 'package:task_master/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:pickUpRequest()
    );
  }
}