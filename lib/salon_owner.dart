import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon/constants.dart';
import 'package:salon/second_page.dart';

class SalonOwner extends StatefulWidget {
  @override
  _SalonOwnerState createState() => _SalonOwnerState();
}

class _SalonOwnerState extends State<SalonOwner> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  image: AssetImage('assets/black-leather-barber-chair-in-front-of-mirror-3993308.jpg'),
                  fit: BoxFit.cover,
                 )
                ),
                child: SingleChildScrollView(
                    child: Column(
                    children: <Widget>[
                      SizedBox(height: 250.0,),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        height: 470.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.86),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("તમારી સલૂન નોંધણી કરો",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Raleway',
                            fontSize: 30.0
                          )),
                          SizedBox(height: 30.0,),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text("સલૂન નામ",style: kHintTextStyle,),
                                  ],
                                ),
                                Divider(
                                  height: 50,
                                  thickness: 3.0,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 5.0,),
                                Row(
                                  children: <Widget>[
                                    Text("માલીકનું નામ",style: kHintTextStyle,),
                                  ],
                                ),
                                Divider(
                                  height: 50,
                                  thickness: 3.0,
                                  color: Colors.black,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("મોબાઇલ નંબર (Login માટે)",style: kHintTextStyle,),
                                  ],
                                ),
                                Divider(
                                  height: 50,
                                  thickness: 3.0,
                                  color: Colors.black,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("પાસવર્ડ",style: kHintTextStyle,),
                                  ],
                                ),
                                Divider(
                                  height: 50,
                                  thickness: 3.0,
                                  color: Colors.black,
                                ),
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
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("નવું ખાતું? ",style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 18.0
                            ),),
                            GestureDetector(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage())),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}