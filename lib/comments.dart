import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
        backgroundColor: Color.fromRGBO(26, 38, 50, 1),
        leading: Icon(Icons.arrow_back),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Container(
            child: ListView.builder(
              itemBuilder: (_, int index) => Listcard(),
              itemCount: 10,
            ),
          ),
        ),
      ),
    );
  }
}

class Listcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(3),
            bottomLeft: Radius.circular(3),
            topRight: Radius.circular(3),
            topLeft: Radius.circular(3)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Container(
          height: size.height / 3.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Canadian Tire ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  '1102825',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
              Container(
                width: size.width,
                height: size.height / 7.8,
                child: Text(
                  '***Customer called again, I explained that QC is just holding file until Aug. 31 to confirm the work date for installer. Customer hopes to have the issue resolved ASAP. Please reach out to the customer and advise her of any new updates, so she is not waiting too long.***',
                  style: TextStyle(fontSize: 11.5),
                ),
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  Container(
                    child: Text(
                      '8/31/2020 8:50:46 PM',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
