import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddToShopList extends StatefulWidget {
  final controler;

  AddToShopList({Key key, this.controler}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AddToShopListState();
}

class AddToShopListState extends State<AddToShopList> {
  static const Color darkBlue = Color(0xff002046);
  static const Color lightBrown = Color(0xffbc9a6b);

  var image = [
    'assets/kaloverag.jpg',
    'assets/kbaths.jpg',
    'assets/kkss.jpg',
    'assets/klemon.jpg'
  ];
  var name = ['first', 'second', 'third', 'fourth'];
  var product = ['product', 'product', 'product', 'product'];
  var price = [3, 56, 44, 86];
  var wi;
  var he;
  var quantity = 0;

  @override
  Widget build(BuildContext context) {
    wi = MediaQuery.of(context).size.width;
    he = MediaQuery.of(context).size.height;
    switch (widget.controler.toString()) {
      case '0':
        return itemChooser(0);
        break;
      case '1':
        return itemChooser(1);
        break;
      case '2':
        return itemChooser(2);
        break;
      case '3':
        return itemChooser(3);
        break;
    }
  }

  Widget itemChooser(var controler) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: darkBlue,
          title: Center(
              child: Image.asset(
            'assets/logo.jpg',
            width: 50,
            height: 50,
          )),
          leading: ListTile(
            title: Icon(Icons.close),
            onTap: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                SystemNavigator.pop();
              }
            },
          )),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('ADD TO CART',
                  style: TextStyle(fontSize: 30, color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image[controler],
                width: wi,
                height: he / 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name[controler],
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Product and Refill:\t',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: product[controler],
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                      ]),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: darkBlue,
                      ),
                      onTap: () {
                        setState(() {
                          if (quantity > 0) quantity--;
                          print(quantity);
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: RaisedButton(
                          color: Colors.white70,
                          child: Text(
                            quantity.toString(),
                            style: TextStyle(fontSize: 20, color: darkBlue),
                          ),
                          elevation: 0,
                          onPressed: () {},
                          ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          quantity += 1;
                          print(quantity);
                        });
                      },
                      child: Icon(
                        Icons.add_circle,
                        color: darkBlue,
                      ),
                    ),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Price: ',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: price[controler].toString() + ' \$',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                      ]),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'TOTAL PRICE: ',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: (price[controler] * quantity).toString() +
                                ' \$',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                      ]),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,75,0,0),
              child: Positioned(
                bottom: 20.0,
                child: RaisedButton(
                    color: lightBrown,
                    child: Text(
                      'CONFIRM',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    elevation: 0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)))),
              ),
            ),
          ])),
    );
  }
}
