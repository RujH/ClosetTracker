import 'package:flutter/material.dart';
import 'package:myapp/screens/Authenticate/authenticate.dart';
import 'file:///C:/Users/Ruj/AndroidStudioProjects/myapp/lib/screens/BottomNavigationBar.dart';
import 'file:///C:/Users/Ruj/AndroidStudioProjects/myapp/lib/screens/pages/home.dart';
import 'SideNavigationBar.dart';
import 'package:provider/provider.dart';
import 'package:myapp/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //return either home or authenticate widget
    if (user==null){
      return Authenticate();
    }else{
      //return BottomNavigation();
      return MyHomePage();
    }

  }
}
