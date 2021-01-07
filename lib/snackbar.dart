import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Snackbar extends StatefulWidget{
@override

  State<StatefulWidget> createState(){
    return _Snackbar();
  }

}

class _Snackbar extends State<Snackbar>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          RaisedButton(
            child:Text("click"),
            onPressed:(){
              var snackbar = SnackBar(
              content: Text("this is snackbar"),
          );
          Scaffold.of(context).showSnackBar(snackbar);
        }),
          RaisedButton(
            child:Text("Toast Msg"),
            onPressed:(){
              Toast.show("This is a toast message", context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER);
              },
          ),
        ],
      ),
    );
  }
}
