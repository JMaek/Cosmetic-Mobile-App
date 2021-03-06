import 'package:flutter/material.dart';

class CosmFavrities extends StatefulWidget {
  @override
  _CosmFavritiesState createState() => _CosmFavritiesState();
}

class _CosmFavritiesState extends State<CosmFavrities> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: new AppBar(
          title: new Text(
              "Moje Ulubione",
              style: TextStyle(color: Colors.amber[50])
          ),
          centerTitle: true,
          backgroundColor: Colors.brown,
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.search,
                    color: Colors.amber[50]),
                onPressed: null
            )
          ]
      ),
      body: new Center(
        child: new Text(
            "Kosmetyki zapisane na szybko",
            style: new TextStyle(
              color: Colors.brown[900],
              fontSize: 20.0,)
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
              title: new Text("Home",
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
              title: new Text("P????ki",
                  style: TextStyle(color: Colors.brown, fontSize: 16.0)
              ),
            ),
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

            ),
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

            ),
          ],
        ),
      ),
    );
  }
}
