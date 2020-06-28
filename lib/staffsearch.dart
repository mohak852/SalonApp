import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon/constants.dart';

class SearchStaff extends StatefulWidget {
  @override
  _SearchStaffState createState() => _SearchStaffState();
}

class _SearchStaffState extends State<SearchStaff> {
  Widget _search(){
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 60.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffDBDBDA),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: FittedBox(
          fit: BoxFit.contain,
              child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 10.0,),
            Text("શોધો",style: kLabelStyle,),
            SizedBox(width: 200.0,),
            Container(
                    color: Colors.black,
                    height: 60.0,
                    width: 2,
                  ),
                  SizedBox(width: 15.0,),
            Icon(Icons.search,color: Colors.black,size: 30.0,)
          ],
        ),
      ),
    );
  }
  Widget _container(){ 
    return FittedBox(
      fit: BoxFit.contain,
          child: Container(
        height: 92.0,
        width: 337.0,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xffDBDBDA),
          borderRadius: BorderRadius.circular(15.0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
              radius: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("James Smith (Age- 31)",style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Raleway',
                  fontSize: 20.0,
                ),),
                Text("Experience - 6 Years",style: TextStyle(
                  color: Colors.orange,
                  fontFamily: 'Raleway',
                  fontSize: 18.0,
                ),),
                Text("Ahmedabad",style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Raleway',
                  fontSize: 18.0,
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDBDBDA),
        leading: Icon(Icons.home,color: Colors.black),
        title: Text("ઉપલબ્ધ સ્ટાફ",style: kLabelStyle,),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.arrow_downward,color: Colors.black),
          SizedBox(width: 10.0,)
        ],
      ),
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
                        Container(child: _search()),
                        Expanded(
                            child: SingleChildScrollView(
                                                          child: Container(
                              child: Column(
                                children: <Widget>[
                                  _container(),
                              _container(),
                              _container(),
                              _container(),
                              _container(),
                              _container(),
                              _container(),
                              _container(),
                              _container(),
                              _container(),
                                ],
                              ),
                          ),
                            ),
                        )
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