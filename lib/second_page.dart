import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon/constants.dart';
import 'package:salon/salon_owner.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                  image: AssetImage('assets/men-working-331989.jpg'),
                  fit: BoxFit.cover,
                 )
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 250.0,),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        height: 362.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.86),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("તમે કોણ છો?",style:TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Raleway',
                            fontSize: 24.0
                          ),),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 25.0,),
                                GestureDetector(
                                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SalonOwner())),
                                    child: Container(
                                    height: 50.0,
                                    width: 186,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15.0)
                                    ),
                                    child: Center(child: Text("સલૂન માલિક",style: kButtonStyle,)),
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                  Text("બાર્બર શોપ | બ્યુટી પાર્લર | સમાજસેવક",style: kHintTextStyle,)
                                ],),
                                SizedBox(height: 25.0,),
                                Container(
                                  height: 50.0,
                                  width: 186,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15.0)
                                  ),
                                  child: Center(child: Text("નોકરી ઇચ્છુક",style: kButtonStyle,)),
                                ),
                                SizedBox(height: 5.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                  Text("મેકઅપ આર્ટિસ્ટ | બ્યુટિશિયન | અન્ય",style: kHintTextStyle,)
                                ],),
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
                            Text("પહેલેથી જ એકાઉન્ટ? ",style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 18.0
                            ),),
                            Text("Login Now",style: TextStyle(
                              color: const Color(0xffFF5600),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0
                            ),),
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