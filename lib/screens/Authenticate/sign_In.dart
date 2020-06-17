import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/services/auth.dart';
import 'package:myapp/shared/loading.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //the _ is used to define a private variable
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;


  //Text field state
  String email ='';
  String password = '';
  String  error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
    backgroundColor: Colors.white,
// top bar
//      appBar: AppBar(
//        backgroundColor:Color(0xfffffccc),
//        elevation: 0.0,
//        title: Text(
//            "Welcome",
//             style: TextStyle(fontSize: 20.0, color: Colors.black),
//        ),
//
//        actions: <Widget>[
//          FlatButton.icon(
//              icon: Icon(Icons.person),
//              label: Text('Sign Up'),
//              onPressed: (){
//                widget.toggleView();
//              }
//          ),
//        ],
//     ),


     body: Container(
       width: double.infinity,
       decoration: BoxDecoration (
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.yellow[100],
              Colors.yellow[200],
              //Color(0xfffb6a6a),
              Colors.yellow[300],
              //Colors.yellow[400],
            ]
          )
       ),
       padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
       child: Form(
         key: _formKey,
         //child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               SizedBox(height: 50.0),
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
                     'Sign In',
                     style:TextStyle(color: Colors.deepOrangeAccent),
                   ),
                   onPressed: () async {
                     if (_formKey.currentState.validate()){
                       setState(() => loading = true);
                       dynamic result = await _auth.signInWithEmailAndPass(email.trim(), password.trim());

                        if (result == null){
                        setState(() {
                          error = 'Failed to Sign In';
                          loading = false;
                        });
                        }
                     }

                   }
               ),
               SizedBox(height: 12.0),
               Text(
                 error,
                 style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 14.0),
               ),

           ],

           ),

         //),

       ),

     ),

    );
  }
}
