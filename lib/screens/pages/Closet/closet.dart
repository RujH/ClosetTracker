import 'package:flutter/material.dart';
import 'package:myapp/services/auth.dart';
import 'package:myapp/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/models/cloth.dart';

class Closet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: new Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 20.0),
              ),
            ),
            Container(
              width: 380.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: Color(0xff2F3641),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3), width: .2
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only( bottom: 20.0),
              ),
            ),
            Container(
              width: 380.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: Color(0xffFF7F50),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                    color: Colors.grey.withOpacity(0.3), width: .2
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
            ),
            Container(
              width: 380.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: Color(0xff2F3641),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                    color: Colors.grey.withOpacity(0.3), width: .2
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
            ),
            Container(
              width: 380.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: Color(0xffFF7F50),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                    color: Colors.grey.withOpacity(0.3), width: .2
                ),
              ),
            ),
          ],
        ),
      );
//    return Container(
//      color: Color(0xff2F3641),
//      child: Center(
//          child: Text (
//            "Clothes page",
//            style: TextStyle(fontSize: 20,  color: Colors.white, fontWeight: FontWeight.bold),
//          )
//      ),
//    );
  }
}