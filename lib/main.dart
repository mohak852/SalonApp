import 'package:flutter/material.dart';
import 'package:salon/Fourthpagetapbar.dart';
import 'package:salon/HomePage.dart';
import 'package:salon/LoginPage.dart';
import 'package:salon/salon_owner.dart';
import 'package:salon/second_page.dart';
import 'package:salon/staffsearch.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/LoginPage': (BuildContext context)=>LoginPage(),
        '/TapBar': (BuildContext context)=>TapBar(),
        '/SecondPage': (BuildContext context)=>SecondPage(),
        '/SalonOwner': (BuildContext context)=>SalonOwner(),
        '/HomePage': (BuildContext context)=>HomePage(),
        '/SearchStaff': (BuildContext context)=>SearchStaff(),
      },
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}