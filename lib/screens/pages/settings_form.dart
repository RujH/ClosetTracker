import 'package:flutter/material.dart';
import 'package:myapp/models/user.dart';
import 'package:myapp/services/database.dart';
import 'package:myapp/shared/constants.dart';
import 'package:myapp/shared/loading.dart';
import 'package:provider/provider.dart';


class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();


  String _currentType;
  String _currentSize;
  String _currentColor;
  String _currentBrand;


  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);


    return StreamBuilder<UserData>(
      stream: DatabaseService(uid: user.uid).userData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          UserData userData = snapshot.data;
          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text('Update setting',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  initialValue: userData.type,
                  decoration: textInputDecoration,
                  validator: (val) => val.isEmpty ? 'Please enter type' : null,
                  onChanged: (val) => setState(() => _currentType = val),
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  initialValue: userData.size,
                  decoration: textInputDecoration,
                  validator: (val) => val.isEmpty ? 'Please enter size' : null,
                  onChanged: (val) => setState(() => _currentSize = val),
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  initialValue: userData.color,
                  decoration: textInputDecoration,
                  validator: (val) => val.isEmpty ? 'Please enter color' : null,
                  onChanged: (val) => setState(() => _currentColor = val),
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  initialValue: userData.brand,
                  decoration: textInputDecoration,
                  validator: (val) => val.isEmpty ? 'Please enter brand' : null,
                  onChanged: (val) => setState(() => _currentBrand = val),
                ),

                //dropdown
                //slider
                RaisedButton(
                  color: Colors.blueGrey,
                  child: Text(
                    'Update',
                    style: TextStyle(color: Colors.deepOrangeAccent),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState.validate()){
                      await DatabaseService(uid: user.uid).updateUserData(
                          _currentType ?? userData.type,
                          _currentSize ?? userData.size,
                          _currentColor ?? userData.color,
                          _currentBrand ?? userData.brand
                      );
                      Navigator.pop(context);
                    }
                  }
                ),
              ],
            ),
          );
        }else{
            return Loading();
        }
      }
    );
  }
}
