import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon/constants.dart';

class TapBar extends StatefulWidget {
  @override
  _TapBarState createState() => _TapBarState();
}

class _TapBarState extends State<TapBar> with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,  // Added
      initialIndex: 0, 
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: GestureDetector(
                onTap: ()=>Navigator.of(context).pushReplacementNamed('/SalonOwner'),
                child: Icon(Icons.arrow_back_ios,color: Colors.black)),
              title: Text('તમારી પ્રોફાઇલ પૂર્ણ કરો',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Raleway',
                      fontSize: 25.0
                    )),
              bottom: new TabBar(
                      tabs: <Tab>[
                        new Tab(
                          child: Text("વ્યક્તિગત માહિતી",style:  TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Raleway',
                          fontSize: 25.0
                        ),),
                        ),
                        new Tab(
                          child: Text("અન્ય સેટિંગ",style:  TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Raleway',
                          fontSize: 25.0
                        ),),
                        ),
                      ],
                      controller: _tabController,
                    ),
                    actions: <Widget>[
                      GestureDetector(
                        onTap: ()=>Navigator.of(context).pushReplacementNamed('/HomePage'),
                        child: Icon(Icons.check,color: Colors.black,size: 40.0,))
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
                padding: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: NetworkImage('https://images.pexels.com/photos/3993308/pexels-photo-3993308.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  fit: BoxFit.cover,
                 )
                ),
                child: SingleChildScrollView(
                                  child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: 505.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.86),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: SingleChildScrollView(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("વ્યક્તિગત માહિતી",style: TextStyle(
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
                                    Text("સરનામું",style: kHintTextStyle,),
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
                                Row(
                                  children: <Widget>[
                                    Text("શહેર",style: kHintTextStyle,),
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
                                Row(
                                  children: <Widget>[
                                    Text("રાજ્ય",style: kHintTextStyle,),
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
                                Text("Type",style: kHintTextStyle,),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      CheckboxListTile(
                                      title: Text("જેન્ટ્સ પાર્લર"),
                                      value: _value1,
                                      activeColor: Colors.black,
                                      onChanged: (newValue) { 
                                                  setState(() {
                                                    _value1 = newValue; 
                                                  }); 
                                                },
                                      controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                              ),
                              CheckboxListTile(
                                      title: Text("લેડિઝ પાર્લર"),
                                      value: _value2,
                                      activeColor: Colors.black,
                                      onChanged: (newValue) { 
                                                  setState(() {
                                                    _value2 = newValue; 
                                                  }); 
                                                },
                                      controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                              ),
                                    ],
                                  ),
                                )
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
            ],
          ),
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
  bool _value1 = true;
  bool _value2 = true;
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
                padding: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: NetworkImage('https://images.pexels.com/photos/3993308/pexels-photo-3993308.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  fit: BoxFit.cover,
                 )
                ),
                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: 505.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.86),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: SingleChildScrollView(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("અન્ય સેટિંગ",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Raleway',
                            fontSize: 30.0
                          )),
                          SizedBox(height: 20.0,),
                            Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("સ્ટાફ જોઈએ છીએ?",style: kHintTextStyle,),
                                    Switch(
                                    value: isSwitched,
                                    onChanged: (value){
                                      setState(() {
                                        isSwitched=value;
                                        print(isSwitched);
                                      });
                                    },
                                    activeTrackColor: Colors.black,
                                    activeColor: Colors.grey,
                                  ),
                                  ],
                                ),
                                Text("જો તમને નવા સ્ટાફ જોઈએ છે તો ઉપર માં ટિક કરો",style: kHintTextStyle),
                                FittedBox(
                                  fit: BoxFit.cover,
                                    child: Text("[Visible in search list only if Looking for staff]",style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Raleway',
                                    fontSize: 15.0
                                  ),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("ચાલતી દુકાન વેચવી છે?",style: kHintTextStyle,),
                                    Switch(
                                    value: isSwitched,
                                    onChanged: (value){
                                      setState(() {
                                        isSwitched=value;
                                        print(isSwitched);
                                      });
                                    },
                                    activeTrackColor: Colors.black,
                                    activeColor: Colors.grey,
                                  ),
                                  ],
                                ),
                                SizedBox(height: 5.0,),
                                FittedBox(
                                  fit: BoxFit.cover,
                                  child: Text("તમે તમારી દુકાન વેચવા માંગતા હો, તો કૃપા કરીને પસંદ કરો",style: kHintTextStyle,)),
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
                                Text("જો તમે નવો પાસવર્ડ સેટ કરવા માંગતા હો, \nતો ઉપરના ટેક્સ્ટબોક્સમાં નવો પાસવર્ડ દાખલ કરો.",style: kHintTextStyle),
                                SizedBox(height: 5.0,),
                                Text("Select Language of your app",style: kHintTextStyle,),
                                CheckboxListTile(
                                      title: Text("English"),
                                      value: _value2,
                                      activeColor: Colors.black,
                                      onChanged: (newValue) { 
                                                  setState(() {
                                                    _value2 = newValue; 
                                                  }); 
                                                },
                                      controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                              ),
                              CheckboxListTile(
                                      title: Text("ગુજરાતી"),
                                      value: _value2,
                                      activeColor: Colors.black,
                                      onChanged: (newValue) { 
                                                  setState(() {
                                                    _value2 = newValue; 
                                                  }); 
                                                },
                                      controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                              ),
                              ]
                            ),
                          ],
                        ),
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