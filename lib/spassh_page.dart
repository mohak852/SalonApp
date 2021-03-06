import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salon/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _firstTime;
 _loadFirstSaved() async {
    var _duration = new Duration(seconds: 5);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _firstTime = (prefs.getBool('first_run') ?? true);
    return new Timer(_duration, () {
      if (_firstTime == true) {
        prefs.setBool('first_run', false);
        Navigator.of(context).pushReplacementNamed('/LoginPage');
        //firstRun();
      } else {
       Navigator.of(context).pushReplacementNamed('/HomePage');
      }
    });
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LoginPage');
  }
  void homePage() {
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }
  @override
  void initState() {
    super.initState();
   _loadFirstSaved();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/1593334576187_v - 2-01 (1).png"),
              ),
            ],
          ),
          Center(child: Text("Valand Samaaj",style: TextStyle(
            color: Colors.white,
            fontSize: 25
          ),)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 300,
                width: 300,
                child: Image.asset("assets/bc56b31a50e519be2ed335a47e75bc62.gif"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}