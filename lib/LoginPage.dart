import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'app_config.dart' as config;
import 'blockButton.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  String validateMobile(String value) {
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void signIn(String email,String password) async {
    final FirebaseUser user = (await _auth.signInWithEmailAndPassword(email: email, password: password)).user;
    if(user!=null){
      Navigator.of(context).pushReplacementNamed('/HomePage');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
      Positioned(
      top: 0,
      child: Container(
        width: config.App(context).appWidth(100),
        height: config.App(context).appHeight(37),
        decoration: BoxDecoration(color: Theme.of(context).accentColor),
        ),
      ),
      Positioned(
      top: config.App(context).appHeight(37) - 50,
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.all(Radius.circular(10)), boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: Theme.of(context).hintColor.withOpacity(0.2),
          )
        ]),
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        padding: EdgeInsets.only(top: 50, right: 27, left: 27, bottom: 20),
        width: config.App(context).appWidth(88),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Container(
                 padding: EdgeInsets.only(bottom: 15.0),
                 child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color:Theme.of(context).accentColor,fontWeight: FontWeight.bold,fontSize: 30.0),
                  ),
                 ),
               ),
               SizedBox(height: 10.0,),
              TextFormField(
                keyboardType: TextInputType.phone,
                validator: validateMobile,
                style: TextStyle(
                  color: Colors.black
                ),
                decoration: InputDecoration(
                  labelText: "મોબાઇલ નંબર",
                  labelStyle: TextStyle(color: Theme.of(context).accentColor),
                  contentPadding: EdgeInsets.all(12),
                  hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                  prefixIcon: Icon(Icons.phone, color: Theme.of(context).accentColor),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                style: TextStyle(
                  color: Colors.black
                ),
                keyboardType: TextInputType.text,
                validator: (input) => input.length < 3 ? "Should be more than 3 characters" : null,
                //obscureText: _con.hidePassword,       
                decoration: InputDecoration(
                  labelText: "પાસવર્ડ",
                  labelStyle: TextStyle(color: Theme.of(context).accentColor),      
                  contentPadding: EdgeInsets.all(12),
                  hintText: '••••••••••••',
                  hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                  prefixIcon: Icon(Icons.lock_outline, color: Theme.of(context).accentColor),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text("પાસવર્ડ ફરીથી સેટ કરો?",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 15.0),))
                ],
              ),
              BlockButtonWidget(
                text: Text(
                  "Login",
                  style: TextStyle(color: Color(0xffc7ece3),fontWeight: FontWeight.bold,fontSize: 20.0),
                ),
                color: Color(0xff28b190),
                onPressed: () {
                //  signIn(email.text,pass.text);
                },
              ),
              Center(
                child: FlatButton(
            onPressed: () {
                Navigator.of(context).pushNamed('/SecondPage');
            },
            textColor: Theme.of(context).hintColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("નવું ખાતું? ",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 20.0),),
                  Text("Register Now",style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20.0,
                  ),),
                ],
            ),
          ),
              ),
            ],
          ),
        ),
          ),
          ),      
          ],
        ),
    );
  }
}
