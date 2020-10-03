import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:task_master/Holdjob.dart';
import 'package:task_master/comments.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:url_launcher/url_launcher.dart';

class BookedMap extends StatefulWidget {
  @override
  _BookedMapState createState() => _BookedMapState();
}

class _BookedMapState extends State<BookedMap> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children:[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
          Positioned(
            bottom: 1,
            child: Container(
                height:270,
                width:MediaQuery.of(context).size.width,
                child: bottomnav()),
          )
        ]

      ),

    );
  }
  Widget bottomnav(){
    var _value = 1;
    return SingleChildScrollView(
      child: Container(
        height: 270,
        width: 50,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left:10.0, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Booked", style: TextStyle(color: Colors.green, fontSize: 15),)
                ],
              ),
              SizedBox(height: 4,),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Row(
                  children: [
                    Text("1102825", style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 38, 50,1) ,fontSize: 18),),
                    Spacer(),
                  Container(
                    child: PopupMenuButton<String>(
                      onSelected: choiceAction,
                      itemBuilder: (BuildContext context){
                        return Constants.choices.map((String choice){
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      },
                    )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4,),
              Row(
                children: [
                  Icon(Icons.person, color: Colors.blue[700],),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text("Gail Loughridge"),
                  ),
                ],
              ),
              SizedBox(height: 4,),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.blue[700],),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Container(
                        width:300,
                        child: Text("50, FESTOON PL, BRAMPTON, Ontario, L6T4T4", style: TextStyle(color:Colors.blue[700],fontSize: 12),)),
                  ),
                ],
              ),
              SizedBox(height: 4,),
              Row(
                children:[
                  Icon(Icons.calendar_today, color: Colors.blue[700],),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text("Sat, Jun 27, 2020 - 07:00 AM"),
                          Text("Morning 7AM - 12PM", style: TextStyle(fontSize: 10, color: Colors.green),)
                        ]
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4,),
              Row(
                children: [
                  Icon(Icons.date_range, color: Colors.blue[700], size: 30,),
                  Container(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Change booking date and time",
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                                color: Colors.black,
                              )
                          ),

                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.green[600],
                child: FlatButton(
                  child: Text("REBOOK", style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void choiceAction(String choice){
    if(choice == Constants.ViewDetails){
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => ())); Maaz Bhai
    }else if(choice == Constants.ViewComments){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Comments()));
    }else if(choice == Constants.Call){
      _launchCaller() async {
        const url = "tel:1234567";
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      }
    }else if(choice == Constants.Hold){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => holdjob()));
    }
  }
}

class Constants{
  static const String ViewDetails = 'View Details';
  static const String ViewComments = 'View Comments';
  static const String Call = 'Call';
  static const String Hold = 'Hold Job';

  static const List<String> choices = <String>[
    ViewDetails,
    ViewComments,
    Call,
    Hold
  ];
}
