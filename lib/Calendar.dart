import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendarr extends StatefulWidget {
  @override
  _CalendarrState createState() => _CalendarrState();
}

class _CalendarrState extends State<Calendarr> {
  Map<DateTime, List> _events;
  List _selectedEvents;
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    final _selectedDay = DateTime.now();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromRGBO(26, 38, 50,1),
        leading:IconButton(
            onPressed: () =>{
              Navigator.pop(context,
                  MaterialPageRoute),

            }

            ,icon:Icon(Icons.arrow_back,color: Colors.white,)),
      ),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              color: Colors.white,
              height: 35,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:14.0,right: 3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Booked", style: TextStyle(fontSize: 10),),
                        Text("Jobs:",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  ),
                 Center(
                   child: Container(
                     height: 20,
                     width: 35,
                     color: Colors.pink,
                   ),
                 ),

                  Padding(
                    padding: const EdgeInsets.only(left:3.0,right: 3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Completed",style: TextStyle(fontSize: 10),),
                        Text("Jobs:",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 20,
                      width: 35,
                      color: Colors.grey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:3.0,right: 3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Follow",style: TextStyle(fontSize: 10),),
                        Text("Ups:",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 20,
                      width: 35,
                      color: Colors.lightBlueAccent,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:3.0,right: 3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Overage",style: TextStyle(fontSize: 10),),
                        Text("Requested:",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 20,
                      width: 35,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: TableCalendar(
                        events: _events,
                        startingDayOfWeek: StartingDayOfWeek.sunday,
                        formatAnimation: FormatAnimation.slide,
                        availableGestures: AvailableGestures.all,
                        initialCalendarFormat: CalendarFormat.twoWeeks,
                        calendarStyle: CalendarStyle(
                          selectedColor: Colors.deepOrange[400],
                          todayColor: Colors.deepOrange[200],
                        ),
                        daysOfWeekStyle: DaysOfWeekStyle(
                          weekendStyle: TextStyle().copyWith(color: Colors.blue[600]),
                        ),
                        headerStyle: HeaderStyle(
                          centerHeaderTitle: true,
                          formatButtonVisible: false,
                          formatButtonShowsNext:false,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(26, 38, 50,1),
                          ),
                          titleTextStyle: TextStyle(color: Colors.white),
                        ),

                          calendarController: _controller,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

