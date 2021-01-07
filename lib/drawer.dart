import 'package:calci/disnehcalci.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'snackbar.dart';
import 'webview.dart';
import 'webview1.dart';
import 'main.dart';
import 'disnehcalci.dart';
import 'dini_fision_app.dart';
import 'sherin_interests_app.dart';
import 'dini_bio.dart';
import 'sherin_bio.dart';


class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class HomeScreen extends StatefulWidget {

  var drawerItems = [
    new DrawerItem("LOGIN", Icons.vpn_key),
    new DrawerItem("STACK", Icons.storage),
    new DrawerItem("SNACK BAR", Icons.notifications),
    new DrawerItem("DINI'S BIO", Icons.account_circle),
    new DrawerItem("SHERIN'S BIO", Icons.supervisor_account),
    new DrawerItem("DINI'S APP", Icons.touch_app),
    new DrawerItem("SHERIN'S APP", Icons.apps),
    new DrawerItem("DINI'S WEB", Icons.wb_cloudy),
    new DrawerItem("SHERIN'S WEB", Icons.web),
    new DrawerItem("CALCI", Icons.add),
    new DrawerItem("CONTACT US", Icons.call),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  BuildContext _ctx;
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return LoginPage();
        break;
      case 1:
        return StackList();
        break;
      case 2:
        return Snackbar();
        break;
      case 3:
        return MyApp1();
        break;  
      case 4:
        return MyApp();
        break;
      case 5:
        return BioData();
        break;
      case 6:
        return BioData1();
        break;    
      case 7:
        return WebViewDemo();
        break;
      case 8:
        return WebViewDemo1();
        break;
      case 9:
        return DisnehCalci();
        break;
      default:
        return new Text("Error");
        break;
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var drawerOptions = <Widget>[];

    for (var i = 0; i < widget.drawerItems.length; i++) {
        var d = widget.drawerItems[i];
        if (i == 7) {
          drawerOptions.add(
            const Divider(height: 1.0, color: Colors.cyan),
          );
        }
        drawerOptions.add(new ListTile(
          leading: new Icon(d.icon),
          title: new Text(d.title),
          selected: i == _selectedDrawerIndex,
          onTap: () => _onSelectItem(i),
        ));
      }
      return new Scaffold(
        backgroundColor: Colors.black,
        key: scaffoldKey,
        appBar: new AppBar(
          // here we display the title corresponding to the fragment
          // you can instead choose to have a static title
          title: new Text(
            widget.drawerItems[_selectedDrawerIndex].title,
            style: TextStyle(
          color: Colors.cyanAccent,),
          ),
          iconTheme: new IconThemeData(color: Colors.cyanAccent),
          flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops:[0.94,1],
                colors: <Color>[
              Colors.black,Colors.cyanAccent
            ])          
         ),), 
        ),
        drawer: new Drawer(
          
          child: SingleChildScrollView(
            child: new Column(
              
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text("DISNEH"
                  ),
                  accountEmail: new Text("disneh@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 60.0,
                    backgroundColor: const Color(0xFF4DD0E1),
                    backgroundImage: AssetImage('images/avatar.jpg'),
                  ),
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                    Colors.black,
                    Colors.cyanAccent,
                    ]),
                  ),
                ),
                new Column(children: drawerOptions)
              ],  
              ),
          ),
        ),
        body: _getDrawerItemWidget(_selectedDrawerIndex),
      );
    }
  }