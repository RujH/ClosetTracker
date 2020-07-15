
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/pages/Closet/Cloth/Cloth.dart';
import 'package:myapp/screens/pages/Closet/Shoes/Shoes.dart';
import 'package:myapp/services/auth.dart';
import 'package:myapp/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/models/cloth.dart';

class Closet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(top: 100.0, bottom: 20.0),
                  ),
            ),
            InkWell(
                onTap: () {
                  //print("box 1 ");
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cloth()));
                },
                child: Container(
                      width: 390.0,
                      height: 130.0,
                      padding: EdgeInsets.only(top: 60.0),
                      child: Text(
                        "Clothing",
                        textAlign: TextAlign.center,
                        style: TextStyle( color: Color(0xffEA9F5A),  fontWeight: FontWeight.bold, fontSize: 30, fontStyle:FontStyle.normal ),

                      ),
                      decoration: BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
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
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Shoes()));
            },
            child: Container(
              width: 390.0,
              height: 130.0,
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                "Shoes",
                textAlign: TextAlign.center,
                style: TextStyle( color: Color(0xffEA9F5A),  fontWeight: FontWeight.bold, fontSize: 30, fontStyle:FontStyle.normal ),

              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
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
              width: 390.0,
              height: 130.0,
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                "Accessories",
                textAlign: TextAlign.center,
                style: TextStyle( color: Color(0xffEA9F5A),  fontWeight: FontWeight.bold, fontSize: 30, fontStyle:FontStyle.normal ),

              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
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
              width: 390.0,
              height: 130.0,
            padding: EdgeInsets.only(top: 40.0, bottom: 10.0),

            child: Text(
              "Wish List",
              textAlign: TextAlign.center,
              style: TextStyle( color: Color(0xffEA9F5A),  fontWeight: FontWeight.bold, fontSize: 30, fontStyle:FontStyle.normal ),

            ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.1), width: .3
                  ),
              ),
            ),
          ),
         ],
        ),
      );

  }
}