import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:salon/blockButton.dart';
import 'app_config.dart' as config;

class SalonOwner extends StatefulWidget {
  @override
  _SalonOwnerState createState() => _SalonOwnerState();
}

class _SalonOwnerState extends State<SalonOwner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Theme.of(context).accentColor,
        leading: IconButton(
          onPressed: ()=>Navigator.of(context).pushNamed('/SecondPage'),
          icon: Icon(Icons.arrow_back,color:  Colors.white,)),
        title: Text("તમારી સલૂન નોંધણી કરો",style: TextStyle(
          color: Colors.white
        ),)
      ),
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
                  child: Column(
              children: <Widget>[
                Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 27),
          width: config.App(context).appWidth(88),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
              style: TextStyle(
                color: Colors.black
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "સલૂન નામ",
                labelStyle: TextStyle(color: Theme.of(context).accentColor),
                contentPadding: EdgeInsets.all(12),
                hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                prefixIcon: Icon(Icons.person_outline, color: Theme.of(context).accentColor),
                 border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor )),
              ),
              ),
              SizedBox(height: 30),
              TextField(
              style: TextStyle(
                color: Colors.black
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "માલીકનું નામ",
                labelStyle: TextStyle(color: Theme.of(context).accentColor),
                contentPadding: EdgeInsets.all(12),
                
                hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                prefixIcon: Icon(Icons.email, color: Theme.of(context).accentColor),
                 border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor )),
              ),
              ),
              SizedBox(height: 30),
              TextField(
              style: TextStyle(
                color: Colors.black
              ),
              decoration: InputDecoration(
                labelText: "મોબાઇલ નંબર (Login માટે)",
                labelStyle: TextStyle(color: Theme.of(context).accentColor),
                contentPadding: EdgeInsets.all(12),
                hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                prefixIcon: Icon(Icons.phone, color: Theme.of(context).accentColor),
                 border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor )),
              ),
              ),
              SizedBox(height: 30),
              TextField(
              style: TextStyle(
                color: Colors.black
              ),
              decoration: InputDecoration(
                labelText: "પાસવર્ડ",
                labelStyle: TextStyle(color: Theme.of(context).accentColor),
                contentPadding: EdgeInsets.all(12),
                hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                prefixIcon: Icon(Icons.lock_outline, color: Theme.of(context).accentColor),
                border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor )),
              ),
              ),
              SizedBox(height: 30),
              BlockButtonWidget(
                color: Theme.of(context).accentColor,
                text: Text("નોંધણી કરો",style:TextStyle(color: Color(0xffc7ece3),fontWeight: FontWeight.bold,fontSize: 20.0),),
                onPressed: ()=>Navigator.of(context).pushNamed('/TapBar'),
              ),
            ],
          ),
                ),
              ],
            ),
        ),
      );
  }
}
