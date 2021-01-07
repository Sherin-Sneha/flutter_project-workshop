import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WebViewDemo();
  }
}

class _WebViewDemo extends State<WebViewDemo> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'https://dinishibas.github.io/inidinad/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
           onPageFinished: (String url) {
            try {
              Navigator.pop(context);
            } catch (e) {
              print("Exception");
            }
          },
          gestureNavigationEnabled: true,
        );
      }),
    );
  }
  showAlertDialog(var context) {
    var alertDialog = AlertDialog(
      title: Text("Loading..."),
      content: LinearProgressIndicator(),
    );

    showDialog(context: context, builder: (context) => alertDialog);
  }
}