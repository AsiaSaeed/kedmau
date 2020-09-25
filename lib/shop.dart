import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kedma/aboutus.dart';
import 'package:kedma/discount.dart';
import 'package:kedma/home.dart';
import 'package:kedma/kedmaexclusive.dart';

class Shop extends StatefulWidget {
  @override
  ShopState createState() => ShopState();
}

class ShopState extends State<Shop> {
  Color darkBlue = Color(0xff002046);
  Color lightBrown = Color(0xffbc9a6b);
  var image = [
    'assets/kaloverag.jpg',
    'assets/kbaths.jpg',
    'assets/kkss.jpg',
    'assets/klemon.jpg'
  ];
  var name = ['first', 'second', 'third', 'fourth'];
  var price = [3, 56, 44, 86];
  var amount = [3, 1, 4, 2];
  int state;
  double unit;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    unit = (size.width - 16) / 8;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        // Important: Remove any padding from the ListView.
        children: <Widget>[
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/logo.jpg'),
            ),
            decoration: BoxDecoration(
              color: darkBlue,
            ),
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(
                  fontSize: 25, color: darkBlue, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            title: Text(
              'Kedma Exclusive',
              style: TextStyle(
                  fontSize: 25, color: darkBlue, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KedmaExclusive()));
            },
          ),
          ListTile(
            title: Text(
              'Shop',
              style: TextStyle(
                  fontSize: 25, color: darkBlue, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>))
            },
          ),
          ListTile(
            title: Text(
              'Discount',
              style: TextStyle(
                  fontSize: 25, color: darkBlue, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Discount()));
            },
          ),
          ListTile(
            title: Text(
              'About',
              style: TextStyle(
                  fontSize: 25, color: darkBlue, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
          ),
        ],
      )),
      appBar: AppBar(
        backgroundColor: darkBlue,
      ),
      body: Column(
        children: [
          Text('Shoping List',style: TextStyle(color: darkBlue,fontSize: 40,fontWeight: FontWeight.bold),),
          ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.grey,
          ),
          padding: EdgeInsets.all(8),
          itemCount: name.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(children: [
              if (image[index] != null)
                Image.asset(image[index], width: unit * 1.25, height: 60),
              if (name[index] != null && amount[index] != null)
                Container(
                  alignment: Alignment(-0.5, -1),
                  width: unit * 4,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(name[index]),
                      Text('Quantity: ' + amount[index].toString()),
                    ],
                  ),
                ),
              if (price[index] != null)
                Container(
                  width: unit,
                  padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                  child: Text('price: \n' + '\t' + price[index].toString()),
                ),
              if(price[index]!=null)Container(
                width: unit,
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                child:
                    Text('Total: \n' + (price[index] * amount[index]).toString()),
              ),
              if(name[index]!=null&&price[index]!=null&&amount[index]!=null&&image[index]!=null)Container(
                  width: unit * 0.75,
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 8, 8),
                  child: InkWell(
                    child: Icon(Icons.close, color: Colors.grey),
                    onTap: () {
                      setState(() {
                        name[index] = null;
                        price[index] = null;
                        amount[index] = null;
                        image[index] = null;
                      });

                    },
                  ))
            ]);
          },
        ),
        ]
      ),
    );
  }
}
