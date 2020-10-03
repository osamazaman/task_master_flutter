import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AreasCovered extends StatefulWidget {
  @override
  _AreasCoveredState createState() => _AreasCoveredState();
}

class _AreasCoveredState extends State<AreasCovered> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map"),
        leading: IconButton(
            onPressed: () =>{
              Navigator.pop(context,
                  MaterialPageRoute),
            },
          icon:Icon(Icons.arrow_back),
        ),
        backgroundColor: Color.fromRGBO(26, 38, 50,1),
        actions: [
          Icon(Icons.people)
        ],
      ),

      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
      bottomSheet: Container(
        height: 140,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("11519993", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
              Text("DEBBIE COVITZ"),
              Text("0201 STEELESS AVE. W, M2R 3K1, TORONTO, Ontario", style: TextStyle(fontSize: 12),),
              Text("07:00 AM - Sept 28, 2020",style: TextStyle(fontSize: 12),),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    child: Container(
                        height: 40,
                        width: 70,
                        color: Colors.blue,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.drive_eta,
                              color: Colors.white,),
                            Container(
                                width:30,
                                child: Text("Drive", style: TextStyle(fontSize: 13, color: Colors.white),)),
                          ],
                        )
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                        height: 40,
                        width: 70,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.directions_run,
                              color: Colors.red,),
                            Container(
                                width:23,
                                child: Text("Late", style: TextStyle(fontSize: 13),)),
                          ],
                        )
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                        height: 40,
                        width: 70,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.call,
                              color: Colors.blue,),
                            Container(
                                width:23,
                                child: Text("Call", style: TextStyle(fontSize: 13),)),
                          ],
                        )
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                        height: 40,
                        width: 105,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.mode_comment,
                              color: Colors.blue,),
                            Container(
                                width:60,
                                child: Text("Comments", style: TextStyle(fontSize: 13),)),
                          ],
                        )
                    ),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
