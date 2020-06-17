import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'file:///C:/Users/Ruj/AndroidStudioProjects/myapp/lib/screens/pages/settings_form.dart';
import 'package:myapp/screens/pages/addToCloset.dart';
import 'package:myapp/screens/pages/closet.dart';
import 'package:myapp/screens/pages/profile.dart';
import 'package:myapp/screens/pages/favorite.dart';
import 'package:myapp/screens/pages/shop.dart';
import 'package:myapp/services/auth.dart';



class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  void _showSettingsPanel(){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 60.0),
        child: SettingsForm(),
      );
    });
  }


  int pageIndex = 0;
  final Shop _shop= Shop();
  final Favorite _favorite= Favorite();
  final Closet _closet = Closet();
  final Profile _profile= Profile();
  final AddList _addList= AddList();

  final AuthService _auth = AuthService();

  Widget _showpage= new Closet();
  Widget _pageChooser(int page){
    switch(page){
      case 0:
        return _shop;
        break;
      case 1:
        return _closet;
        break;
      case 2:
        return _addList;
        break;
      case 3:
        return _favorite;
        break;
      case 4:
        return _profile;
        break;

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[100],
        title: Text('Closet Tracker', style: TextStyle(
            color: Colors.blueGrey[800]
        ),
        ),
        //backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.account_circle),
            label: Text('Log Out'),
            onPressed: () async {
              await _auth.signOut();

            },
          ),

          FlatButton.icon(
            icon: Icon(Icons.settings),
            label: Text('settings'),
            onPressed: () => _showSettingsPanel() ,

          ),
        ],
      ),
        bottomNavigationBar: CurvedNavigationBar(
        index: pageIndex,
        color: Colors.blueGrey[700],
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.yellow[100],
        //onTap: onTabTapped,
        //currentIndex: _currentIndex,
        //currentIndex: _currentIndex,
         height: 60.0,
        items: <Widget>[
          Icon(Icons.shopping_cart, size: 20,color: Colors.black),
          Icon(Icons.list, size: 20,color: Colors.black),
          Icon(Icons.add, size: 20,color: Colors.black),
          Icon(Icons.favorite, size: 20,color: Colors.black),
          Icon(Icons.person, size: 20,color: Colors.black)
        ],
        animationDuration: Duration(milliseconds: 200),
        //index: 2,
        animationCurve: Curves.bounceInOut,
        onTap: (int index){
          setState(() {
            _showpage = _pageChooser(index);
            //_pageController.jumpToPage(index);
          });
          //debugPrint('current index is $index');
        },
    ),
    body: Container(
      color: Colors.white,
      child: Center(
      //  child: Text(_page.toString(), textScaleFactor: 10.0),
        child: _showpage,
      ),
    ),

    );
  }
}

//////////////////////////////////////////////////
//class BottomNavigation extends StatelessWidget {
////  final Shop _shop= Shop();
////  final Favorite _favorite= Favorite();
////  final Closet _closet = Closet();
////  final ExitApp _exitApp= ExitApp();
////  final AddList _addList= AddList();
//  int _page = 0;
//  //Widget _showPage= new PageProducts();
//    final List<Widget> _children = [
//    Shop(),
//    Favorite(),
//    Closet(),
//    ExitApp(),
//    AddList()
//  ];
//
//
////  Widget _pageChooser(int page){
////    switch(page){
////      case 0:
////        return _shop;
////        break;
////      case 1:
////        return _closet;
////        break;
////      case 2:
////        return _addList;
////        break;
////      case 3:
////        return _favorite;
////        break;
////      case 4:
////        return _exitApp;
////        break;
////
////    }
////  }
//
//
//  @override
//
//  Widget build(BuildContext context) {
//    return Scaffold(
////      body: PageView(
////        controller: _pageController,
////        children: <Widget>[
////          Shop(),
////          Favorite(),
////          Closet(),
////          ExitApp(),
////          AddList()
////        ],
////        onPageChanged: (int index){
////          setState((){
////            _pageController.jumpToPage(index);
////          });
////        }
////
////      ),
//     // body: _children[_currentIndex],
//      bottomNavigationBar: CurvedNavigationBar(
//        color: Colors.blueGrey[700],
//        backgroundColor: Colors.white,
//        buttonBackgroundColor: Colors.yellow[100],
//        //onTap: onTabTapped,
//        //currentIndex: _currentIndex,
//        //currentIndex: _currentIndex,
//        height: 60.0,
//        items: <Widget>[
//          Icon(Icons.shopping_cart, size: 20,color: Colors.black),
//          Icon(Icons.list, size: 20,color: Colors.black),
//          Icon(Icons.add, size: 20,color: Colors.black),
//          Icon(Icons.favorite, size: 20,color: Colors.black),
//          Icon(Icons.exit_to_app, size: 20,color: Colors.black)
//        ],
//        animationDuration: Duration(milliseconds: 200),
//        index: 2,
//        animationCurve: Curves.bounceInOut,
//        onTap: (int index){
//          setState(() {
//            _page= index;
//            //_pageController.jumpToPage(index);
//          });
//          //debugPrint('current index is $index');
//        },
//    ),
//    body: Container(
//      color: Colors.lime,
//      child: Center(
//        child: Text(_page.toString(), textScaleFactor: 10.0),
//      ),
//    ),
//    );
//  }
////  void onTabTapped(int index) {
////    setState(() {
////      _currentIndex = index;
////    });
////  }
//}
/////////////////////////////////////////////////////////