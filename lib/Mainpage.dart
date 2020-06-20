import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

             
  int goalValue = 0;
  getGoalValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    setState(() {
      goalValue = prefs.getInt('intGoalValue');
      print("Goal Value is "+goalValue.toString());
      //This is the Goal value
    });
  }
  @override
  void initState() {
    super.initState();
    getGoalValuesSF();
  }
  bool _rememberMe = false;
  // Widget _Login() {
  //   return 
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/black-leather-barber-chair-in-front-of-mirror-3993308.jpg'),
                  fit: BoxFit.cover,
                 )
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 250.0,),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        height: 400.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Column(
                          children: <Widget>[
                            Text("Login",style: TextStyle(
                              color: Colors.black,
                              fontSize: 36.0,
                              fontWeight: FontWeight.w500,
                            ),),
                            TextField(
                              decoration: InputDecoration(
                                
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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