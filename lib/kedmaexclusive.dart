import 'package:flutter/material.dart';
import 'package:kedma/discount.dart';
import 'package:kedma/itemdetail.dart';
import 'package:kedma/shop.dart';

import 'aboutus.dart';
import 'addtoshoplist.dart';
import 'home.dart';

class KedmaExclusive extends StatefulWidget {
  @override
  KedmaExclusiveState createState() => KedmaExclusiveState();
}

class KedmaExclusiveState extends State<KedmaExclusive> {
  Color darkBlue = Color(0xff002046);
  Color lightBrown = Color(0xffbc9a6b);
  var image = [
    'assets/kaloverag.jpg',
    'assets/kbaths.jpg',
    'assets/kpss.jpg',
    'assets/kvss.jpg',
    'assets/klss.jpg',
    'assets/klemon.jpg',
    'assets/kbbkiwi.jpg',
    'assets/kbblilac.jpg',
    'assets/kbbmango.jpg',
    'assets/kbmud.jpg',
    'assets/kdsea.jpg',
    'assets/kfootc.jpg',
    'assets/kfoots.jpg',
    'assets/khandc.jpg',
    'assets/kkss.jpg',
    'assets/kanticg.jpg'
  ];
  var name = ['first', 'second', 'third', 'fourth', 'fifth','six','seven','eight','nine','ten','eleven','twelve','thirten','fourtine','fifteen','sixteen'];
  var price = [3, 56, 44, 86,37,14,32,91,27,84,71,49,81,23,64,59,];
  int state;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            title: Text('Home',style: TextStyle(fontSize: 25,color: darkBlue,fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            },
          ),
          ListTile(
            title: Text('Kedma Exclusive',style: TextStyle(fontSize: 25,color: darkBlue,fontWeight: FontWeight.bold),),
            onTap: () {
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            },
          ),
          ListTile(
            title: Text('Shop',style: TextStyle(fontSize: 25,color: darkBlue,fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shop()));
            },
          ),
          ListTile(
            title: Text('Discount',style: TextStyle(fontSize: 25,color: darkBlue,fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Discount()));
            },
          ),
          ListTile(
            title: Text('About',style: TextStyle(fontSize: 25,color: darkBlue,fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs()));
            },
          ),
        ],
      )),
      appBar: AppBar(
        backgroundColor: darkBlue,
      ),
      body: Column(
        children: [

          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (itemWidth / 275),
                children: List.generate(4, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ItemDetail(checker: index)));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset(
                              image[index],
                              height: 190,
                            ),
                            Text(
                              name[index].toString(),
                            ),
                            Expanded(
                              child: new Row(
                                  children: [
                                    Text(price[index].toString() + ' \$'),
                                    RaisedButton(
                                      color: Colors.white,
                                      elevation: 0,
                                      onPressed: () {
                                        Navigator.push(context,MaterialPageRoute(builder: (context)=>AddToShopList(controler: index)));
                                      },
                                      child: Icon(
                                        Icons.add_shopping_cart,
                                        color: lightBrown,
                                      ),
                                    )
                                  ],
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
