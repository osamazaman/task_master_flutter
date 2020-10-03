import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:checkbox_formfield/checkbox_formfield.dart';
import 'package:task_master/Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffca333a),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 70,),
              Container(
                  height: 60,
                  width: size.width,
                  child: Image.asset('assets/logo.jpeg')),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  'Quick Task',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white,
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white,
                        )),
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                        hintText: 'Username',
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    child: TextField(
                      obscureText: _obscureText,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white,
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white,
                        )),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                        ),
                        suffixIcon: IconButton(
                          color: Colors.white,
                          icon: Icon(_obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        hintText: 'Password',
                      ),
                    ),
                  )),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: <Widget>[
                    // Theme(
                    //   data: Theme.of(context).copyWith(
                    //     unselectedWidgetColor: Colors.white,
                    //   ),
                    //   child: Checkbox(
                    //     value: false,
                    //     onChanged: (value) {},
                    //   ),
                    // ),
                    // Text(
                    //   'Stay logged in',
                    //   style: TextStyle(color: Colors.white),
                    // ),
                  ],
                ),
              ),

               Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CheckboxListTileFormField(
                        title: Text(
                          'Stay logged in',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSaved: (bool value) {},
                        validator: (bool value) {
                          if (value) {
                            return null;
                          } else {
                            return 'False!';
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20, top: 15),
                child: Container(
                  height: 40,
                  width: size.width / 1.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => hdash()));
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 15, color: Color(0xffca333a)),
                    ),
                  ),
                ),
              ),

//            Checkbox(
//              value: true,
//              onChanged: (bool value) {},
//            ),
//            Switch(value: false, onChanged: (bool value) {}),
              Text('Forgot Password', style: TextStyle(color: Colors.white)),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    height: 150,
                    width: size.width / 1.2,
                    child: Column(
                      children: <Widget>[
                        Text(
                          ' Warning\nUsing the app while driving is dangerous! Please donot attempt to use while driving!',
                          style: TextStyle(color: Color(0xffe5565a)),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.8),
                          child: Text(
                            'Version: 1.6.77',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
//      child: Container(
//        color: Colors.red[800],
//      ),
    );
  }
}
