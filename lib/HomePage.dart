import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon/constants.dart';
import 'package:salon/salon_owner.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _containers(String text) {
    return Container(
      height: 91.0,
      width: 130.0,
      
      decoration: BoxDecoration(
        color: Color(0xffDBDBDA),
        borderRadius: BorderRadius.circular(15.0), 
      ),
      child: Center(
        child: Text(text,style: kHintTextStyle,),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 50.0,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Home",style: kHintTextStyle,),
                Container(
                  color: Colors.black,
                  width: 2,
                ),
                GestureDetector(
                  onTap: ()=>Navigator.of(context).pushNamed('/SearchStaff'),
                  child: Text("સ્ટાફ શોધ",style: kHintTextStyle,)),
                Container(
                  color: Colors.black,
                  width: 2,
                ),
                Text("મારું ખાતું",style: kHintTextStyle,),
              ],
            ),
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
                  image: NetworkImage('https://images.pexels.com/photos/3268732/pexels-photo-3268732.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  fit: BoxFit.cover,
                  
                 ),
                 color: Colors.black.withOpacity(0.8),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20.0),
                        height: 128.0,
                        width: 354.0,
                        decoration: BoxDecoration(
                          color: Color(0xffDBDBDA),
                          borderRadius: BorderRadius.circular(15.0), 
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                          Text("નોકરી ઇચ્છુકો",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Raleway',
                          fontSize: 30.0
                        )),
                            Text("ટેટૂ આર્ટિસ્ટ",style:  TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Raleway',
                            fontSize: 30.0
                          ),),
                          
                          ],
                        ),
                      ),
                      SizedBox(height: 25.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              _containers("જેન્ટ્સ \n પાર્લર\n નિષ્ણાત (500)"),
                              _containers("લેડિઝ \n પાર્લર\nનિષ્ણાત (1000)")
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _containers("જેન્ટ્સ \n પાર્લર\n નિષ્ણાત (500)"),
                          _containers("લેડિઝ \n પાર્લર\nનિષ્ણાત (1000)")
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _containers("જેન્ટ્સ \n પાર્લર\n નિષ્ણાત (500)"),
                          _containers("લેડિઝ \n પાર્લર\nનિષ્ણાત (1000)")
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _containers("જેન્ટ્સ \n પાર્લર\n નિષ્ણાત (500)"),
                          _containers("લેડિઝ \n પાર્લર\nનિષ્ણાત (1000)")
                        ],
                      ),
                        ],
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