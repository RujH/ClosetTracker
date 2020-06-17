
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Ruj/AndroidStudioProjects/myapp/lib/screens/BottomNavigationBar.dart';
import 'file:///C:/Users/Ruj/AndroidStudioProjects/myapp/lib/screens/pages/settings_form.dart';

import 'package:myapp/services/auth.dart';
import 'package:myapp/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/models/cloth.dart';


class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.yellow[100],
          child: Center(
            child: Text(
              "HOME PAGE",
              style: TextStyle(fontSize: 20,color: Colors.black38),
            ),
          ),
        );

    }


  }

