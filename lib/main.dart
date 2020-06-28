


import 'package:flutter/material.dart';
import 'package:salon/Fourthpagetapbar.dart';
import 'package:salon/HomePage.dart';
import 'package:salon/LoginPage.dart';
import 'package:salon/salon_owner.dart';
import 'package:salon/second_page.dart';
import 'package:salon/spassh_page.dart';
import 'package:salon/staffsearch.dart';
import 'app_config.dart' as config;
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/LoginPage': (BuildContext context)=>FirstPage(),
        '/TapBar': (BuildContext context)=>TapBar(),
        '/SecondPage': (BuildContext context)=>SecondPage(),
        '/SalonOwner': (BuildContext context)=>SalonOwner(),
        '/HomePage': (BuildContext context)=>HomePage(),
        '/SearchStaff': (BuildContext context)=>SearchStaff(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      theme: ThemeData(
                      fontFamily: 'ProductSans',
                      primaryColor: Colors.white,
                      brightness: Brightness.light,
                      scaffoldBackgroundColor: Colors.grey,
                      accentColor: Color(0xff28b190),
                      dividerColor: config.Colors().accentColor(0.1),
                      hintColor: config.Colors().secondDarkColor(1),
                      focusColor: config.Colors().accentDarkColor(1),
                      textTheme: TextTheme(
                        headline5: TextStyle(fontSize: 22.0, color: config.Colors().secondDarkColor(1)),
                        headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: config.Colors().secondDarkColor(1)),
                        headline3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: config.Colors().secondDarkColor(1)),
                        headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700, color: config.Colors().mainDarkColor(1)),
                        headline1: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w300, color: config.Colors().secondDarkColor(1)),
                        subtitle1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: config.Colors().secondDarkColor(1)),
                        headline6: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700, color: config.Colors().mainDarkColor(1)),
                        bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: config.Colors().secondDarkColor(1)),
                        bodyText1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: config.Colors().secondDarkColor(1)),
                        caption: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300, color: config.Colors().secondDarkColor(0.6)),
                      ),
                    )
    );
  }
}