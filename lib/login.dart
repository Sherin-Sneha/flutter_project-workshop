import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
      Text("Username"),
      TextFormField(

      ),
      Text("Password"),
      TextFormField(

      ),
      RaisedButton(
        child: Text("Sign In"),
        color: Colors.teal,
        onPressed: null,
      ),
      RaisedButton(
        child: Text("Sign Up"),
        color: Colors.teal,
      ),
    ],  
    ),
    ),
    );
  }
}