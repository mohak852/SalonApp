import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_config.dart' as config;
class TapBar extends StatefulWidget {
  @override
  _TapBarState createState() => _TapBarState();
}

class _TapBarState extends State<TapBar> with SingleTickerProviderStateMixin {
  TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,  // Added
      initialIndex: 0, 
          child: Scaffold(
            backgroundColor: Color(0xff28b190),
            appBar: AppBar(
              backgroundColor: Color(0xff28b190),
              leading: GestureDetector(
                onTap: ()=>Navigator.of(context).pushReplacementNamed('/SalonOwner'),
                child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
              title: FittedBox(
                fit: BoxFit.contain,
                              child: Text('તમારી પ્રોફાઇલ પૂર્ણ કરો',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Raleway',
                        fontSize: 25.0
                      )),
              ),
              bottom: new TabBar(
                      tabs: <Tab>[
                        new Tab(
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text("વ્યક્તિગત માહિતી",style:  TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Raleway',
                            fontSize: 20.0
                        ),),
                          ),
                        ),
                        new Tab(
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text("અન્ય સેટિંગ",style:  TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Raleway',
                            fontSize: 20.0
                        ),),
                          ),
                        ),
                      ],
                      controller: _tabController,
                    ),
                    actions: <Widget>[
                      GestureDetector(
                        onTap: ()=>Navigator.of(context).pushReplacementNamed('/HomePage'),
                        child: Icon(Icons.check,color: Colors.white,size: 30.0,),),
                        SizedBox(width: 10.0,)
                    ],
            ),
                        body: new TabBarView(
                children: <Widget>[
                  new FirstTap(),
                  new Secondtap(),
                ],
                controller: _tabController,
              ),
      ),
    );
  }
}

class FirstTap extends StatefulWidget {
  @override
  _FirstTapState createState() => _FirstTapState();
}

class _FirstTapState extends State<FirstTap> {
  bool _value1 = true;
  bool _value2 = false;
  String dropdownValue = "Gujrat"; 
  String dropdownValue1 = "Surat";
  List<String> stateMap = [
    "Gujrat","Maharashtra","Rajasthan","Others"
  ];
  List<String> cityMap = [
    "Vadodra","Ahmedabad","Surat","Ujjain","Bhopal","Indore","Jaipur","Jodhpur","Ajmer","Kota","Others"
  ];
  @override
  Widget build(BuildContext context) {
    bool isSwitched1 = true;
        return Scaffold(
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
                  SizedBox(height: 10),
                  DropdownButton<String>(
                  value: dropdownValue != null ? dropdownValue : "",
                  icon: Icon(Icons.arrow_downward,color: Theme.of(context).accentColor,),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Theme.of(context).accentColor),
                  underline: Container(),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: stateMap.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  ),
                    SizedBox(height: 10),
                    DropdownButton<String>(
                    value: dropdownValue1 != null ? dropdownValue1 : "",
                    icon: Icon(Icons.arrow_downward,color: Theme.of(context).accentColor,),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Theme.of(context).accentColor),
                    underline: Container(),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue1 = newValue;
                      });
                    },
                    items: cityMap.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                    SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                           Text("જેન્ટ્સ પાર્લર",style: TextStyle(color: Theme.of(context).accentColor,)),
                        Switch(
                                  value: _value1,
                                  onChanged: (value){
                                    setState(() {
                                      _value1=value;
                                      print(_value1);
                                    });
                                  },
                                  activeTrackColor: Theme.of(context).accentColor,
                                  activeColor: Colors.black,
                                ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                           Text("લેડિઝ પાર્લર",style: TextStyle(color: Theme.of(context).accentColor,)),
                        Switch(
                                  value: _value2,
                                  onChanged: (value){
                                    setState(() {
                                      _value2=value;
                                      print(_value2);
                                    });
                                  },
                                  activeTrackColor: Theme.of(context).accentColor,
                                  activeColor: Colors.black,
                                ),
                      ],
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

class Secondtap extends StatefulWidget {
  @override
  _SecondtapState createState() => _SecondtapState();
}

class _SecondtapState extends State<Secondtap> {
  bool isSwitched = true;
  bool isSwitched1 = true;
  bool _value1 = true;
  bool _value2 = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
                  child:Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("સ્ટાફ જોઈએ છીએ?",style: TextStyle(color: Theme.of(context).accentColor,)),
                              Switch(
                              value: isSwitched,
                              onChanged: (value){
                                setState(() {
                                  isSwitched=value;
                                  print(isSwitched);
                                });
                              },
                              activeTrackColor: Colors.green,
                              activeColor: Colors.black,
                            ),
                          ],
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text("જો તમને નવા સ્ટાફ જોઈએ છે તો ઉપર માં ટિક કરો",style: TextStyle(color: Theme.of(context).accentColor,),)),
                        SizedBox(height: 10.0,),
                        //તમે તમારી દુકાન વેચવા માંગતા હો, તો કૃપા કરીને પસંદ કરો
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("ચાલતી દુકાન વેચવી છે?",style: TextStyle(color: Theme.of(context).accentColor,)),
                              Switch(
                              value: isSwitched1,
                              onChanged: (value){
                                setState(() {
                                  isSwitched1=value;
                                  print(isSwitched1);
                                });
                              },
                              activeTrackColor: Colors.green,
                              activeColor: Colors.black,
                            ),
                          ],
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text("તમે તમારી દુકાન વેચવા માંગતા હો, તો કૃપા કરીને પસંદ કરો",style: TextStyle(color: Theme.of(context).accentColor,),)),
                        SizedBox(height: 10.0,),
                        SizedBox(height: 30),
                        TextField(
                          style: TextStyle(
                          color: Colors.black
                           ),
                          keyboardType: TextInputType.text,
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
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Center(child: Text("જો તમે નવો પાસવર્ડ સેટ કરવા માંગતા હો,\n તો ઉપરના ટેક્સ્ટબોક્સમાં નવો પાસવર્ડ દાખલ કરો.",style:TextStyle(color: Theme.of(context).accentColor,),))),
                        SizedBox(height: 15.0,),      
                        
                      ],
                    ),
                  ),
        ),
      );
  }
}
