

import 'package:flutter/material.dart';

import 'package:myapp/services/auth.dart';
import 'package:myapp/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/models/cloth.dart';


class Profile extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFF7F50),
      child: Center(
        child: Text (
            "Profile",
          style: TextStyle(fontSize: 20,color: Colors.white),
        )
      ),
    );
  }
}