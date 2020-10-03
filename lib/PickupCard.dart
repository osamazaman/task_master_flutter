import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:task_master/Holdjob.dart';
import 'package:task_master/comments.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:url_launcher/url_launcher.dart';

class pickUpRequest extends StatefulWidget {
  @override
  _pickUpRequestState createState() => _pickUpRequestState();
}

class _pickUpRequestState extends State<pickUpRequest> {
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
        height: 240,
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
                  Container(
                      width:MediaQuery.of(context).size.width,
                      color:Colors.green[200],
                      child: Text("Product Details", style: TextStyle(color: Colors.green, fontSize: 15),))
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
                          Text("Description:"),
                          Row(
                            children: [
                              Text("temporary description text", style: TextStyle(fontSize: 10, color: Colors.green),),
                              Spacer(),
                              Text("27/08/2020", style:TextStyle(fontSize: 13),),
                            ],
                          )
                        ]
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4,),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.green[600],
                child: FlatButton(
                  child: Text("Request", style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
