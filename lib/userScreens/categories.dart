import 'package:cosmapp/tools/store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cosmapp/userScreens/itemdetails.dart';

class Cate extends StatefulWidget {
  @override
  _CateState createState() => _CateState();
}

class _CateState extends State<Cate> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: new AppBar(
          title: new Text(
              "Kategorie",
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
        child: new Column(
          children: <Widget>[
            new Flexible(
                child: new ListView.builder(
                  itemCount: storeitems.length,
                  itemBuilder: (
                  BuildContext context, int index) {
                  return new GestureDetector(
                  onTap: () {
                   Navigator.of(context).push( new MaterialPageRoute(
                       builder: (context) => ItemDetail()));
                  },
                   child: new Card(
                        child: new Stack(
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new SizedBox(
                                    height: 15.0),
                                new Container(
                                  width: 100.0,
                                  height: 100.0,

                                  child:
                                  new Image.network(
                                      storeitems[index].itemImage),
                                ),
                                new Container(
                                  width: 200.0,
                                  height: 100.0,

                                  child: new Stack(
                                    children: <Widget>[
                                      new Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .stretch,
                                        children: <Widget>[
                                          new SizedBox(
                                              height: 15.0),
                                          new Text(
                                            storeitems[index].itemName,
                                            style: new TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          new SizedBox(
                                              height: 5.0),
                                          new Text(
                                            storeitems[index].itemBrand,
                                            style: new TextStyle(
                                              color: Colors.brown[700],
                                              fontWeight: FontWeight.w400,
                                            ),),
                                          new SizedBox(
                                              height: 5.0),
                                          new Row(
                                            children: <Widget>[
                                              new Icon(
                                                Icons.star, color: Colors.brown,
                                                size: 15.0,),
                                              new Text(
                                                  "${storeitems[index]
                                                      .itemRate}"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                new Container(
                                  width: 30.0,
                                  height: 100.0,
                                  child:
                                  new IconButton(
                                      icon: Icon(
                                          Icons.favorite_border,
                                          color: Colors.brown[700], size: 20.0),
                                      onPressed: null),
                                ),
                                new SizedBox(
                                    height: 15.0),
                              ],
                            ),
                          ],
                        )
                    ),
                );
              },
            )),
          ],
        )
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
              title: new Text("Półki",
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
