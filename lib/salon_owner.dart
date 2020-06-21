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
                  image: NetworkImage('https://images.pexels.com/photos/3993308/pexels-photo-3993308.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  fit: BoxFit.cover,
                 )
                ),
                child: Column(
                children: <Widget>[
                  Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: ()=>Navigator.of(context).pushNamed('/SecondPage'),
                            child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 30.0)),
                        ],
                      ),
                  SizedBox(height: 150.0,),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    height: 505.0,
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
                            
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0)
                                )
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Row(
                              children: <Widget>[
                                Text("માલીકનું નામ",style: kHintTextStyle,),
                              ],
                            ),
                            
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0)
                                )
                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: <Widget>[
                                Text("મોબાઇલ નંબર (Login માટે)",style: kHintTextStyle,),
                              ],
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0)
                                )
                              ),
                            ),
                            SizedBox(height: 5,),
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
                            SizedBox(height: 10.0,),
                            GestureDetector(
                              onTap: ()=>Navigator.of(context).pushNamed('/TapBar'),
                                child: Container(
                                height: 50.0,
                                width: 186,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15.0)
                                ),
                                child: Center(child: Text("નોંધણી કરો",style: kButtonStyle,)),
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
            ],
          ),
        ),
      ),
    );
  }
}