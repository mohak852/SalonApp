import 'package:flutter/material.dart';
import 'package:salon/Mainpage.dart';
import 'package:salon/constants.dart';
import 'package:salon/salon_owner.dart';
import 'package:salon/singup.dart';

import 'package:shared_preferences/shared_preferences.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/MainPage': (BuildContext context)=> MainPage(),
        '/SignUpPage': (BuildContext context)=> SignUp(),
        '/SalonOwner': (BuildContext context)=> SalonOwner(),
      },
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentGoalValue=0;
  int value;
 void savingGoal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('intGoalValue', currentGoalValue);
    print("the goal is saved " + currentGoalValue.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.00,),
                Text("Welcome To Salon App",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                  fontSize: 30.0
                ),),
                SizedBox(height: 150.0,),
                Container(
                  height: 300.0,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          title: Text("Kindly Select your Language",style: kLabelStyle,),
                        ),
                      ),
                      Divider(
                        height: 2.0,
                        thickness: 3.0,
                        color: Colors.cyanAccent,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          title: Text("Gujrati",style: kLabelStyle,),
                          onTap: (){
                            setState(() {
                              currentGoalValue = 1;
                            });
                          },
                        ),
                      ),
                      Divider(
                        height: 2.0,
                        thickness: 3.0,
                        color: Colors.cyanAccent,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          title: Text("English",style: kLabelStyle,),
                          onTap: (){
                            setState(() {
                              currentGoalValue = 0;
                            });
                          },
                        ),
                      ),
                      Divider(
                        height: 2.0,
                        thickness: 3.0,
                        color: Colors.cyanAccent,
                      ),
                      SizedBox(height: 20.0,),
                      FlatButton(onPressed: (){
                        Navigator.of(context).pushNamed('/MainPage');
                        savingGoal();
                      }, child: Container(
                        height: 50.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(child: Text("Continue",style: TextStyle(
                          fontSize: 20.0,
                        ),)),
                      ),
                      ),
                      SizedBox(height: 5.0,)
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
      )     
    );
  }
}