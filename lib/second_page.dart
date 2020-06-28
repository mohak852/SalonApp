import 'package:flutter/material.dart';
import 'package:salon/blockButton.dart';
import 'app_config.dart' as config;
class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
        padding: EdgeInsets.only(top: 10, right: 17, left: 17),
        width: config.App(context).appWidth(88),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                onTap: ()=>Navigator.of(context).pushNamed('/LoginPage'),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back,color:Theme.of(context).accentColor,),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width/8+10,),
               Container(
                 child: Center(
                  child: Text(
                    "તમે કોણ છો?",
                    style: TextStyle(color:Theme.of(context).accentColor,fontWeight: FontWeight.bold,fontSize: 30.0),
                  ),
                 ),
               ),
                ],
              ),
               SizedBox(height: 10.0,),
              Container(
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(color: Color(0xff28b190),width: 3)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            BlockButtonWidget(
                              text: Text(
                               "સલૂન માલિક",
                                style: TextStyle(color:Color(0xff28b190),fontSize: 20.0,fontWeight: FontWeight.bold),
                              ),
                              color: Colors.white,
                              onPressed: () {
                               Navigator.of(context).pushNamed('/SalonOwner');
                              },
                            ),
                            SizedBox(width: 10.0,),
                            Icon(Icons.arrow_forward_ios,color:Theme.of(context).accentColor)
                          ],
                        ),
                      ),
              Center(child: Text("બાર્બર શોપ | બ્યુટી પાર્લર | સમાજસેવક",style: TextStyle(color:Theme.of(context).accentColor ),)),           
              SizedBox(height: 20.0,),
              Container(
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(color: Color(0xff28b190),width: 3)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            BlockButtonWidget(
                              text: Text(
                               "નોકરી ઇચ્છુક",
                                style: TextStyle(color: Color(0xff28b190),fontSize: 20.0,fontWeight: FontWeight.bold),
                              ),
                              color: Colors.white,
                              onPressed: () {
                                // _con.register();
                              },
                            ),
                            SizedBox(width: 10.0,),
                            Icon(Icons.arrow_forward_ios,color:Theme.of(context).accentColor)
                          ],
                        ),
                      ),
                      
                      
                      Center(child: Text("મેકઅપ આર્ટિસ્ટ | બ્યુટિશિયન | અન્ય",style: TextStyle(color:Theme.of(context).accentColor ),)),
              SizedBox(height: 30.0,),
              Center(
                child: FlatButton(
            onPressed: () {
                Navigator.of(context).pop();
            },
            textColor: Theme.of(context).hintColor,
            child: FittedBox(
              fit: BoxFit.contain,
                          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("પહેલેથી જ એકાઉન્ટ? ",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 20.0),),
                    Text("Login Now",style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20.0,
                    ),),
                  ],
              ),
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