import 'package:flutter/material.dart';
import 'package:kedma/aboutus.dart';
import 'package:kedma/home.dart';
import 'package:kedma/itemdetail.dart';
import 'package:kedma/kedmaexclusive.dart';
import 'package:kedma/shop.dart';


class Discount extends StatefulWidget {
  @override
  DiscountState createState() => DiscountState();
}

class DiscountState extends State<Discount> {
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
              Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context)=>Home()));
            },
          ),
          ListTile(
            title: Text('Kedma Exclusive',style: TextStyle(fontSize: 25,color: darkBlue,fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>KedmaExclusive()));
            },
          ),
          ListTile(
            title: Text('Shop',style: TextStyle(fontSize: 25,color: darkBlue,fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Shop()));
            },
          ),
          ListTile(
            title: Text('Discount',style: TextStyle(fontSize: 25,color: darkBlue,fontWeight: FontWeight.bold),),
            onTap: () {
              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Discount()));
            },
          ),
          ListTile(
            title: Text('About',style: TextStyle(fontSize: 25,color: darkBlue,fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AboutUs()));
            },
          ),
        ],
      )),
      appBar: AppBar(
        backgroundColor: darkBlue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: Image.asset(
              'assets/home.jpg',
              width: itemWidth * 2,
            ),
          ),
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
                                    GestureDetector(
                                      onTap: () {},
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
