import 'package:flutter/material.dart';

class ItemDetail extends StatefulWidget {
  String itemName;
  String itemBrand;
  String itemType;
  String itemImage;
  String itemIngredients;
  double itemRate;

  ItemDetail({
    this.itemName,
    this.itemBrand,
    this.itemImage,
    this.itemType,
    this.itemRate,
    this.itemIngredients
  });
  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: new AppBar(
        title: new Text("Szczegóły Produktu"),
          centerTitle: true,
          backgroundColor: Colors.brown,
      iconTheme: IconThemeData(color: Colors.amber[50]),
      ),
      body:new Center(
          child: new Column(children: <Widget>[
            new Container(
              height: 350.0,
              padding: EdgeInsets.all(25.0),
              decoration: new BoxDecoration(
                color: Colors.white,
                image: new DecorationImage(image: new NetworkImage(widget.itemImage),
                  fit: BoxFit.contain,)
              ),
            ),
            new Flexible(
                child: Text(widget.itemName, style: new TextStyle(
                    
                    backgroundColor: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                ))

            ),

            new SingleChildScrollView(
                child: new Column(
                  children: <Widget>[],
                )
            ),
          ],)

      ),

    );
  }
}
