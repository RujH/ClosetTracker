
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




