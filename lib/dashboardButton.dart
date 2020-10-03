import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  String text;
  String number;
  Function onPressed;

  DashboardButton({this.text, this.number, this.onPressed});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300])),
        ),
        width: size.width / 1,
        height: size.height / 15,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(
                    0xff3c5a6a,
                  ),
                ),
              ),
              Spacer(),
              Text(
                number,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(
                    0xff3c5a6a,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
