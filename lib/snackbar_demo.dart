import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class SnackbarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SnackbarDemo();
  }
}

class _SnackbarDemo extends State<SnackbarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Press to see snackbar"),
            onPressed: () {
              var snackbar = SnackBar(content: Text("This is the snackbar"));
              Scaffold.of(context).showSnackBar(snackbar);
            },
          ),
          RaisedButton(
            child: Text("toast msg"),
            onPressed: () {
              Toast.show("Toast works like this", context,
                  duration: Toast.LENGTH_SHORT, gravity: Toast.TOP);
            },
          )
        ],
      ),
    );
  }
}
