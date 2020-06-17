//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/services/auth.dart';
import 'package:myapp/shared/loading.dart';


class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //Text field state
  String email ='';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.amberAccent[100],
        elevation: 0.0,
        title: Text('Sign Up'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Sign In'),
              onPressed: (){
                widget.toggleView();
              }
          ),
        ],
      ),

      body: Container(

        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              TextFormField(
                  //Type email
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                  validator: (val) => val.isEmpty ? 'Enter an email': null,
                  onChanged: (val){
                    setState(() => email = val);

                  }
              ),
              SizedBox(height: 30.0),
              TextFormField(
                  //Type password
                  decoration: InputDecoration(
                      hintText: 'Password'
                  ),
                  validator: (val) => val.length < 6 ? 'Password must be 6+ characters long': null,
                  obscureText: true , //hides the password when its being typed
                  onChanged: (val){
                    setState(() => password = val);

                  }
              ),
              SizedBox(height: 30.0),
              RaisedButton(
                  color: Colors.blueGrey,
                  child: Text(
                    'Register',
                    style:TextStyle(color: Colors.deepOrangeAccent),
                  ),
                  onPressed: () async {
                   if (_formKey.currentState.validate()){
                     setState(() => loading = true);
                      dynamic result = await _auth.registerWithEmailAndPass(email.trim(), password.trim());
                      if (result == null){
                        setState(() {
                          error = 'Please enter a valid email';
                          loading = false;
                        });
                      }
                   }
                  }
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.deepOrange, fontSize: 14.0),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
