import 'package:flutter/material.dart';
import 'main.dart';

class TabCase extends StatefulWidget {
  @override
  _TabCaseState createState() => _TabCaseState();
}

class _TabCaseState extends State<TabCase> {
  List<Widget> containers = [
    Container(
      child: Center(child: Text('No Pending complaints available')),
    ),
    Container(
      child:
          Center(child: Text('No Resolution InProgress complaints available')),
    ),
    Container(
      child: Text(''),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: Colors.black,
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: Color(0xff51b2c9),
                labelColor: Colors.white,
                indicatorColor: Color(0xffa4a528),
                tabs: <Widget>[
                  Tab(
                    text: 'PENDING COMPLAINTS',
                  ),
                  Tab(
                    text: 'RESOLUTION IN PROGRESS',
                  ),
                  Tab(
                    text: 'RESOLVED COMPLAINTS',
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(children: containers),
        ),
      ),
    );
  }
}
