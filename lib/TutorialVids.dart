import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class TutorialVids extends StatefulWidget {
  @override
  _TutorialVidsState createState() => _TutorialVidsState();
}

class _TutorialVidsState extends State<TutorialVids> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial Videos"),
        backgroundColor: Color.fromRGBO(26, 38, 50,1),
        leading:IconButton(
            onPressed: () =>{
              Navigator.pop(context,
                  MaterialPageRoute),
            }
            ,icon:Icon(Icons.arrow_back,color: Colors.white,)),
      ),

      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(59, 92, 111,1),
        child: Container(
          child: ListView.builder
            (itemBuilder: (_,int index)=>Listc(),
          itemCount: 10,
          ),
        ),
      ),
    );
  }
}

class Listc extends StatelessWidget{
  YoutubePlayerController _controller = YoutubePlayerController(

      initialVideoId: "8n0M3HQ3dbo",
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,



      )

  );
  @override
  Widget build(BuildContext context){
    return Card(
      elevation:5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right:5,top: 5),
        child: Container(
            height: 100,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:5,bottom: 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: 100,
                    child: YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blue,


                    ),
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Text("Welcome Page video (Quick task)", style: TextStyle(fontSize: 13),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Text("Part-1",style:TextStyle(color: Colors.blue, fontSize: 13)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Text("Quicktask", style: TextStyle(fontSize: 13,fontStyle: FontStyle.italic),),
                    ),
                  ],
                ),

              ],
            )
        ),
      ),
    );
  }

}


