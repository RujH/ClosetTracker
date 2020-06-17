import 'package:flutter/material.dart';
import 'package:myapp/screens/wrapper.dart';
import 'package:myapp/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:myapp/models/user.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
          //load up the wrapper.dart file
          home: Wrapper(),
        ),

    );

  }
}

