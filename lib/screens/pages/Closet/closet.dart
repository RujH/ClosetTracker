
import 'package:flutter/cupertino.dart';
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(top: 50.0, bottom: 20.0),
                  ),
            ),
            InkWell(
                onTap: () {print("box 1 ");},
                child: Container(
                      width: 380.0,
                      height: 150.0,
                      padding: EdgeInsets.only(top: 40.0),
                      child: Text(
                        "Clothing",
                        textAlign: TextAlign.center,
                        style: TextStyle( color: Colors.white,  fontWeight: FontWeight.bold, fontSize: 50, fontStyle:FontStyle.normal ),

                      ),
                      decoration: BoxDecoration(

                          color: Color(0xffEA9F5A),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: .2
                          ),
                    ),
                ),
              ),


          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only( bottom: 20.0),
              ),
          ),
          InkWell(
            onTap: () {print("box 2 ");},
            child: Container(
              width: 380.0,
              height: 150.0,
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                "Shoes",
                textAlign: TextAlign.center,
                style: TextStyle( color: Colors.white,  fontWeight: FontWeight.bold, fontSize: 50, fontStyle:FontStyle.normal ),

              ),
              decoration: BoxDecoration(
                color: Color(0xffEA9F5A),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3), width: .2
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
          ),

          InkWell(
            onTap: () {print("box 3 ");},
            child: Container(
              width: 380.0,
              height: 150.0,
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                "Accessories",
                textAlign: TextAlign.center,
                style: TextStyle( color: Colors.white,  fontWeight: FontWeight.bold, fontSize: 50, fontStyle:FontStyle.normal ),

              ),
              decoration: BoxDecoration(
                  color: Color(0xffEA9F5A),
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                      color: Colors.grey.withOpacity(0.3), width: .2
                  ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
          ),
         InkWell(
          onTap: () {print("box 4 ");},
          child: Container(
              width: 380.0,
              height: 150.0,
            padding: EdgeInsets.only(top: 40.0),
            child: Text(
              "Wish List",
              textAlign: TextAlign.center,
              style: TextStyle( color: Colors.white,  fontWeight: FontWeight.bold, fontSize: 50, fontStyle:FontStyle.normal ),

            ),
              decoration: BoxDecoration(
                  color: Color(0xffEA9F5A),
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.3), width: .2
                  ),
              ),
            ),
          ),
         ],
        ),
      );

  }
}