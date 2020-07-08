import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/screens/pages/addToCloset.dart';
import 'file:///C:/Users/Ruj/AndroidStudioProjects/myapp/lib/screens/pages/Closet/closet.dart';
import 'package:myapp/screens/pages/profile.dart';
import 'package:myapp/screens/pages/favorite.dart';
import 'package:myapp/screens/pages/home.dart';
import 'package:myapp/screens/pages/settings_form.dart';
import 'package:myapp/screens/pages/shop.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(

        body: FoldableSidebarBuilder(
          drawerBackgroundColor: Color(0xffFF7F50),
          drawer: CustomDrawer(closeDrawer: (){
            setState(() {
              drawerStatus = FSBStatus.FSB_CLOSE;
            });
          },),
          screenContents: Home(),
          status: drawerStatus,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blueGrey[800],
            child: Icon(Icons.menu,color: Colors.white,),
            onPressed: () {
              setState(() {
                drawerStatus = drawerStatus == FSBStatus.FSB_OPEN ? FSBStatus.FSB_CLOSE : FSBStatus.FSB_OPEN;
              });
            }),
      ),
    );
  }
}


class CustomDrawer extends StatelessWidget {

  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.blueGrey[800],
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey.withAlpha(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//                  Image.asset(
//                    "assets/rps_logo.png",
//                    width: 100,
//                    height: 100,
//                  ),
                  SizedBox(height: 10,),
                  //TextSpan(text: "Closet Tracker", style: TextStyle(color: Colors.while),),
                  Text("Closet Tracker", style: TextStyle(color: Colors.white),)


                ],
              )),
          ListTile(
            onTap: (){
              //debugPrint("Tapped Profile");
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile()));
              closeDrawer;
            },
            leading: Icon(Icons.person, color: Colors.white,),
            title: Text("Your Profile",  style: TextStyle(color: Colors.white),),
          ),
//          Divider(
//            height: 2,
//            //color: Colors.blueGrey,
//          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Closet");
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Closet()));
              closeDrawer;
            },
            leading: Icon(MdiIcons.tshirtV, color: Colors.white,),
            title: Text("Closet",  style: TextStyle(color: Colors.white),),
          ),
//          Divider(
//            height: 2,
//            //color: Colors.blueGrey,
//          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Shop");
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Shop()));
              closeDrawer;
            },
            leading: Icon(Icons.shopping_cart, color: Colors.white,),
            title: Text("Shop", style: TextStyle(color: Colors.white),),
          ),
//          Divider(
//            height: 2,
//            //color: Colors.blueGrey,
//          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Favorite");
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Favorite()));
              closeDrawer;
            },
            leading: Icon(Icons.favorite, color: Colors.white,),
            title: Text("Favorite", style: TextStyle(color: Colors.white),),
          ),
//          Divider(
//            height: 2,
//            //color: Colors.blueGrey,
//          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Settings");
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingsForm()));
              closeDrawer;
            },
            leading: Icon(Icons.settings, color: Colors.white,),
            title: Text("Settings", style: TextStyle(color: Colors.white),),
          ),
//          Divider(
//            height: 2,
//            //color: Colors.blueGrey,
//          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Notifications");
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingsForm()));
              closeDrawer;
            },
            leading: Icon(Icons.notifications, color: Colors.white,),
            title: Text("Notifications",  style: TextStyle(color: Colors.white),),
          ),
//          Divider(
//            height: 2,
//            //color: Colors.blueGrey,
//          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Log Out");
            },
            leading: Icon(Icons.exit_to_app, color: Colors.white,),
            title: Text("Log Out",  style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}


