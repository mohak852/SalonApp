import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:salon/couponCard.dart';

import 'search_bar.dart';

class HomePage extends StatefulWidget {
    int currentTab = 2;
  HomePage({Key key, this.currentTab}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
List<List<String>> titleList = [
    ["જેન્ટ્સ પાર્લર નિષ્ણાત (500)"],
    ["લેડિઝ પાર્લર નિષ્ણાત (1000)"],
    ["આર્ટિસ્ટ છોકરાઓ (800)"],
    ["આર્ટિસ્ટ છોકરીઓ (800)"],
    ["ટેટૂ આર્ટિસ્ટ (150)"],
    ["દુલ્હન મેકઅપ નિષ્ણાત"],
    ["શોપ ખરીદનાર"],
    ["કામ શીખવા માંગે છે"],
  ];
  void _selectTab(int tabItem) {
    setState((){
      this.widget.currentTab = tabItem;
      switch (tabItem) {
        case 0:
          return Navigator.of(context).pushNamed('/HomePage');
          break;
        case 1:
          break;
        case 2:
          return Navigator.of(context).pushNamed('/HomePage');
          break;
        case 3:
          return Navigator.of(context).pushNamed('/HomePage');
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomAppBar(
  child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      IconButton(onPressed: () {}, icon: Icon(Icons.search),),
      IconButton(onPressed: () {}, icon: Icon(Icons.person),),
    ],
  ),
),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
floatingActionButton: new FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.home),
),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.sort, color: Colors.white),
         onPressed: () => {},
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0,
        centerTitle: true,
        title: Text("Salon App",style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
             Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  leading: Icon(
                    Icons.local_offer,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Few Menu',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:TextStyle(
                      color: Theme.of(context).accentColor
                    ),
                  ),
                  subtitle: Text(
                    'Man Salon',
                    style: TextStyle(
                      color: Theme.of(context).accentColor
                    )
                  ),
                ),
              ),
             CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            autoPlayCurve: Curves.easeInOut
          ),
          items: titleList.map((item) => Container(
            height: 300,
            child: CouponCard(abc: item,),
          )).toList(),
        ),
        Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  leading: Icon(
                    Icons.local_offer,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Rest Menu',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:TextStyle(
                      color: Theme.of(context).accentColor
                    ),
                  ),
                  subtitle: Text(
                    'Man Salon',
                    style: TextStyle(
                      color: Theme.of(context).accentColor
                    )
                  ),
                ),
              ),
         CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            autoPlayCurve: Curves.easeInOut
          ),
          items: titleList.map((item) => Container(
            height: 300,
            child: CouponCard(abc: item,),
          )).toList(),
        ),
        Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  leading: Icon(
                    Icons.local_offer,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Promotion Ads',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:TextStyle(
                      color: Theme.of(context).accentColor
                    ),
                  ),
                  subtitle: Text(
                    'Ads',
                    style: TextStyle(
                      color: Theme.of(context).accentColor
                    )
                  ),
                ),
              ),
         CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            autoPlayCurve: Curves.easeInOut
          ),
          items: titleList.map((item) => Container(
            height: 300,
            child: CouponCard(abc: item,),
          )).toList(),
        ),

          ],
        ),
      ),
    );
    
  }
}

