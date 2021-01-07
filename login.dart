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
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page"),
      ),
      body: Column(
        children: <Widget>[
          Text("Username"),
          TextFormField(

          ),
          Text("Password"),
          TextFormField(

          ),
          RaisedButton(
            child: Text("Sign In"),
            onPressed: null,
          ),
          RaisedButton(
            child: Text("Sign Up"),
          ),
        ],
      ),
    );
  }
}