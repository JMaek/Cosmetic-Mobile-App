import 'package:cosmapp/userScreens/categories.dart';
import 'package:cosmapp/userScreens/login.dart';
import 'package:cosmapp/userScreens/onas.dart';
import 'package:cosmapp/userScreens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'favourite.dart';
import 'polki.dart';
import 'settings.dart';
import 'login.dart';
import 'onas.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: new AppBar(
        title: new Text(
            "NAZWA",
            style: TextStyle(color: Colors.amber[50])
        ),
        centerTitle: true,
          backgroundColor: Colors.brown,
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.favorite,
                  color: Colors.amber[50]),
                onPressed: (){
                  Navigator.of(context).push(new CupertinoPageRoute(builder: (BuildContext context){
                        return new CosmFavrities();
                  }));
                }),
            new IconButton(
                icon: new Icon(Icons.search,
                    color: Colors.amber[50]),
                onPressed: null
            )
          ]
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text(
                "Lista kosmetyków na polskim rynku wraz z analizą składów",
                style: new TextStyle(
                  color: Colors.brown[900],
                  fontSize: 48.0,)
            ),
            new IconButton(icon: Icon(Icons.category),
                onPressed: (){Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context){
              return new Cate();
              }));}
            )
          ],
        ),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              accountName: new Text("Name Name",
                  style: TextStyle(color: Colors.amber[50])),
              accountEmail: new Text("email@gmail.com",
                  style: TextStyle(color: Colors.amber[50])),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.amber[50],
                child:
                new Icon(Icons.person, size: 50.0, color: Colors.brown,),
              ),
            ),
            new ListTile(
              leading:
              new Icon(
                Icons.home, color:
              Colors.brown,
                size: 20.0,
              ),
              title: new Text("Strona Główna",
                  style: TextStyle(color: Colors.brown, fontSize: 16.0)
              ),
            ),
            new ListTile(
              leading:
              new Icon(
                Icons.bookmark_border, color:
              Colors.brown,
                size: 20.0,
              ),
              title: new Text("Półki",
                  style: TextStyle(color: Colors.brown, fontSize: 16.0)
              ),
              onTap: (){Navigator.of(context).push(new CupertinoPageRoute(builder: (BuildContext context){
                return new Polki();
              }));
              }),
            new ListTile(
              leading:
              new Icon(
                Icons.add, color:
              Colors.brown,
                size: 20.0,
              ),
              title: new Text("Dodaj nowy produkt",
                  style: TextStyle(color: Colors.brown, fontSize: 16.0)
              ),

            ),
            new ListTile(
              leading:
              new Icon(
                Icons.settings, color:
              Colors.brown,
                size: 20.0,
              ),
              title: new Text("Ustawienia",
                  style: TextStyle(color: Colors.brown, fontSize: 16.0)
              ),
                onTap: (){Navigator.of(context).push(new CupertinoPageRoute(builder: (BuildContext context){
                  return new Settings();
                }));
                }),
            new ListTile(
              leading:
              new Icon(
                Icons.favorite_border, color:
              Colors.brown,
                size: 20.0,
              ),
              title: new Text("O aplikacji",
                  style: TextStyle(color: Colors.brown, fontSize: 16.0)
              ),
                onTap: (){Navigator.of(context).push(new CupertinoPageRoute(builder: (BuildContext context){
                  return new Onas();
                }));
                }),
            new ListTile(
              leading:
              new Icon(
            Icons.arrow_forward, color:
              Colors.brown,
              size: 20.0,
              ),
              title: new Text("Zaloguj się",
              style: TextStyle(color: Colors.brown, fontSize: 16.0)
              ),
                onTap: (){Navigator.of(context).push(new CupertinoPageRoute(builder: (BuildContext context){
              return new Login();
          }));
          }),
        ]),
      ),
    );
  }
}
