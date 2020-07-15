
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';



class Cloth extends StatefulWidget {
  @override
  _ClothState createState() => _ClothState();
}

class _ClothState extends State<Cloth> {
  List<String> catagories = [
    'T-shirts','Shirts/Blouse','Dresses','Sweaters/Cardigans', 'Blazers','Coats/Jackets','Skirts','Shorts','Jumpsuits/Rompers', 'Jeans'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new Container(
        //margin: EdgeInsets.symmetric(vertical: 20.0),
        padding: EdgeInsets.only(top: 150.0),
        color: Colors.blueGrey[800],
        child: new ListView.builder(
          reverse: false,
          itemBuilder: (_, int index) => Eachlist(this.catagories[index]),
          itemCount: this.catagories.length,
        ),
      ),

    );
  }
}
class Eachlist extends StatelessWidget {
  final String name;
  Eachlist(this.name);
  @override
  Widget build(BuildContext context) {
    return new Card(

      color: Colors.blueGrey[800],
      child: new Container(

        padding: EdgeInsets.all(15.0),
        child: new Row(

           children: <Widget>[
             InkWell(
               onTap: ((){print("BOX"); }),
               child: Container(
                 child:new Text(name,style: TextStyle(fontSize: 15.0, color: Colors.white)),
                 padding: EdgeInsets.only(right: 10.0),

               ),
             ),
          ],
        ),
      ),
    );
  }
}




//class Cloth extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//         //color: Color(0xffFF7F50),
//        body: Column(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        mainAxisAlignment: MainAxisAlignment.center,
//
//        children: <Widget>[
////          Align(
////            alignment: Alignment.center,
////            child: Padding(
////              padding: EdgeInsets.only(bottom: 20.0),
////            ),
////          ),
////          InkWell(
////
////            onTap: () {print("box 2 ");},
////            child: Container(
////              width: 380.0,
////              height: 150.0,
////              padding: EdgeInsets.only(top: 40.0),
////              child: Text(
////                "Shoes",
////                textAlign: TextAlign.center,
////                style: TextStyle( color: Colors.white,  fontWeight: FontWeight.bold, fontSize: 50, fontStyle:FontStyle.normal ),
////
////              ),
////
////              decoration: BoxDecoration(
////                //color: Color(0xffEA9F5A),
////                borderRadius: BorderRadius.circular(20.0),
////                border: Border(
////                  bottom: BorderSide(
////                    color: Colors.black,
////                    width: 5.0,
////                  )
////                    //color: Colors.grey.withOpacity(0.3), width: .2
////                ),
//////                border: Border(
//////                    left: BorderSide( //                   <--- left side
//////                      color: Colors.black,
//////                      width: 3.0,
//////                  ),
//////                    //color: Colors.grey.withOpacity(0.3), width: .2
//////                ),
////              ),
////            ),
////
////          ),
//          Align(
//            alignment: Alignment.center,
//            child: Padding(
//              padding: EdgeInsets.only(bottom: 20.0),
//            ),
//          ),
//
//          InkWell(
//            onTap: () {print("box 3 ");},
//            child: Container(
//              width: 400.0,
//              height: 20.0,
//              padding: EdgeInsets.only(top: 40.0),
//              //child: Text(
//                //"Accessories",
//                //textAlign: TextAlign.center,
//                //style: TextStyle( color: Colors.white,  fontWeight: FontWeight.bold, fontSize: 50, fontStyle:FontStyle.normal ),
//
//              //),
//              decoration: BoxDecoration(
//                color: Color(0xffEA9F5),
//                borderRadius: BorderRadius.circular(20.0),
//                border: Border.all(
//                    color: Colors.grey.withOpacity(0.3), width: .2
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
//
//
////
////class Cloth extends StatelessWidget {
////
////
////  @override
////  Widget build(BuildContext context) {
////    return Container(
////
////      child: Column(
////        crossAxisAlignment: CrossAxisAlignment.center,
////        mainAxisAlignment: MainAxisAlignment.center,
////
////        children: <Widget>[
//////          Align(
//////            alignment: Alignment.center,
//////            child: Padding(
//////              padding: EdgeInsets.only(bottom: 20.0),
//////            ),
//////          ),
////          InkWell(
////            child: Container(
////              margin: const EdgeInsets.all(15.0),
////              padding: const EdgeInsets.all(3.0),
////              decoration: BoxDecoration(
////                  border: Border(
////                    left: BorderSide(
////                        color: Colors.black,
////                        width: 3.0
////                    ),
////                  )
////              ),
////              child: Text("My Awesome Border"),
////            ),
////
////
////          ),
////        ],
////      ),
////    );
////  }
////}

