import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon/constants.dart';
import 'package:salon/second_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Center(
            child: Text("ADS")
          ),
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: NetworkImage('https://images.pexels.com/photos/331989/pexels-photo-331989.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  fit: BoxFit.cover,
                 )
                ),
                child: SingleChildScrollView(
                                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 250.0,),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        height: 390.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.86),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Login",style: kLabelStyle,),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text("મોબાઇલ નંબર",style: kHintTextStyle,),
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide(color: Colors.black)
                                    )
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                Row(
                                  children: <Widget>[
                                    Text("પાસવર્ડ",style: kHintTextStyle,),
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0)
                                    )
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                  Text("પાસવર્ડ ફરીથી સેટ કરો",style: kHintTextStyle,)
                                ],),
                                SizedBox(height: 10.0,),
                                Container(
                                  height: 50.0,
                                  width: 186,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15.0)
                                  ),
                                  child: Center(child: Text("Login",style: kButtonStyle,)),
                                ),
                                SizedBox(height: 15.0,),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("નવું ખાતું? ",style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Raleway',
                              fontSize: 18.0
                            ),),
                            GestureDetector(
                              onTap: ()=>Navigator.of(context).pushNamed('/SecondPage'),
                                child: Text("Register Now",style: TextStyle(
                                color: const Color(0xffFF5600),
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0
                              ),),
                            ),
                          ],
                        ),
                      ),
                              ],
                            ),
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