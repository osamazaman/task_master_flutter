import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Function onpressed;
  String text;
  IconData leadicon;
  String endtext = 'a';
  Button({this.endtext, @required this.onpressed, this.text, this.leadicon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[200])),
      height: MediaQuery.of(context).size.height / 17,
      child: FlatButton(
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              leadicon,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              width: MediaQuery.of(context).size.width / 2.5,
              child: Text(
                text,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Spacer(),
            Text(
              endtext,
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
