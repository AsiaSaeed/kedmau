import 'package:flutter/material.dart';
import 'package:kedma/addtoshoplist.dart';

class ItemDetail extends StatefulWidget {
  final checker;

  ItemDetail({Key key, this.checker}) : super(key: key);

  @override
  ItemDetailState createState() => ItemDetailState();
}

class ItemDetailState extends State<ItemDetail> {
  var image = [
    'assets/kaloverag.jpg',
    'assets/kbaths.jpg',
    'assets/kkss.jpg',
    'assets/klemon.jpg'
  ];
  var name = [
    'first',
    'second',
    'third',
    'fourth',
    'fifth',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
    'eleven',
    'twelve',
    'thirten',
    'fourtine',
    'fifteen',
    'sixteen'
  ];
  var price = [
    3,
    56,
    44,
    86,
    37,
    14,
    32,
    91,
    27,
    84,
    71,
    49,
    81,
    23,
    64,
    59,
  ];
  var def = [
    'kjdskjfdaskjfkadsjfkaldfkjasfirst',
    'kjdskjfdaskjfkadsjfkaldfkjassecond',
    'kjdskjfdaskjfkadsjfkaldfkjasthird',
    'kjdskjfdaskjfkadsjfkaldfkjasfirst',
    'kjdskjfdaskjfkadsjfkaldfkjassecond',
    'kjdskjfdaskjfkadsjfkaldfkjasthird',
    'kjdskjfdaskjfkadsjfkaldfkjasfirst',
    'kjdskjfdaskjfkadsjfkaldfkjassecond',
    'kjdskjfdaskjfkadsjfkaldfkjasthird',
    'kjdskjfdaskjfkadsjfkaldfkjasfirst',
    'kjdskjfdaskjfkadsjfkaldfkjassecond',
    'kjdskjfdaskjfkadsjfkaldfkjasthird',
    'kjdskjfdaskjfkadsjfkaldfkjasfirst',
    'kjdskjfdaskjfkadsjfkaldfkjassecond',
    'kjdskjfdaskjfkadsjfkaldfkjasthird',
    'kjdskjfdaskjfkadsjfkaldfkjasthird',
  ];
  var direction = [
    'jhdfjldssfkjdslkfjadslkfsecond',
    null,
    'jhdfjldssfkjdslkfjadslkfthird',
    'jhdfjldssfkjdslkfjadslkffourth',
    'jhdfjldssfkjdslkfjadslkfsecond',
    null,
    'jhdfjldssfkjdslkfjadslkfthird',
    'jhdfjldssfkjdslkfjadslkffourth',
    'jhdfjldssfkjdslkfjadslkfsecond',
    null,
    'jhdfjldssfkjdslkfjadslkfthird',
    'jhdfjldssfkjdslkfjadslkffourth',
    'jhdfjldssfkjdslkfjadslkfsecond',
    null,
    'jhdfjldssfkjdslkfjadslkfthird',
    'jhdfjldssfkjdslkfjadslkffourth',
  ];
  var ingredients = [
    'jhdfjldssfkjdslkfjadslkffirst',
    'jhdfjldssfkjdslkfjadslkfsecond',
    'jhdfjldssfkjdslkfjadslkfthird',
    'jhdfjldssfkjdslkfjadslkffourth',
    'jhdfjldssfkjdslkfjadslkffirst',
    'jhdfjldssfkjdslkfjadslkfsecond',
    'jhdfjldssfkjdslkfjadslkfthird',
    'jhdfjldssfkjdslkfjadslkffourth',
    'jhdfjldssfkjdslkfjadslkffirst',
    'jhdfjldssfkjdslkfjadslkfsecond',
    'jhdfjldssfkjdslkfjadslkfthird',
    'jhdfjldssfkjdslkfjadslkffourth',
    'jhdfjldssfkjdslkfjadslkffirst',
    'jhdfjldssfkjdslkfjadslkfsecond',
    'jhdfjldssfkjdslkfjadslkfthird',
    'jhdfjldssfkjdslkfjadslkffourth',
  ];
  var size = [
    '1',
    '2',
    '4',
    '1',
    '2',
    '4',
    '1',
    '2',
    '4',
    '1',
    '2',
    '4',
    '1',
    '2',
    '4',
    '45'
  ];
  var sizes = [
    [
      ['firsts', 'first ingredint'],
      ['seconds', 'second ingredint'],
      ['thirds', 'third ingredint']
    ],
    [
      ['first', 'first ingredint'],
      ['second', 'second ingredint'],
      ['third', 'third ingredint']
    ],
    [
      ['first', 'first ingredint'],
      ['second', 'second ingredint'],
      ['third', 'third ingredint']
    ],
    null,
    [
      ['firsts', 'first ingredint'],
      ['seconds', 'second ingredint'],
      ['thirds', 'third ingredint']
    ],
    [
      ['first', 'first ingredint'],
      ['second', 'second ingredint'],
      ['third', 'third ingredint']
    ],
    [
      ['first', 'first ingredint'],
      ['second', 'second ingredint'],
      ['third', 'third ingredint']
    ],
    null,
    [
      ['firsts', 'first ingredint'],
      ['seconds', 'second ingredint'],
      ['thirds', 'third ingredint']
    ],
    [
      ['first', 'first ingredint'],
      ['second', 'second ingredint'],
      ['third', 'third ingredint']
    ],
    [
      ['first', 'first ingredint'],
      ['second', 'second ingredint'],
      ['third', 'third ingredint']
    ],
    null,
    [
      ['firsts', 'first ingredint'],
      ['seconds', 'second ingredint'],
      ['thirds', 'third ingredint']
    ],
    [
      ['first', 'first ingredint'],
      ['second', 'second ingredint'],
      ['third', 'third ingredint']
    ],
    [
      ['first', 'first ingredint'],
      ['second', 'second ingredint'],
      ['third', 'third ingredint']
    ],
    null,
  ];

  Color darkBlue = Color(0xff002046);
  Color lightBrown = Color(0xffbc9a6b);
  var listOfSizesName = <Text>[];
  var listOfSizesContent = <RichText>[];
  var wi;
  var he;

  @override
  Widget build(BuildContext context) {
    wi = MediaQuery.of(context).size.width;
    he = MediaQuery.of(context).size.height;
    switch (widget.checker.toString()) {
      case '0':
        return itemChosser(0, wi, he);
        break;
      case '1':
        return itemChosser(1, wi, he);
        break;
      case '2':
        return itemChosser(2, wi, he);
        break;
      case '3':
        return itemChosser(3, wi, he);
        break;
    }
  }

  Widget itemChosser(int controller, var wi, var he) {
    if (sizes[controller] != null) {
      for (int i = 0; i < sizes[controller].length; i++) {
        Text a = new Text(
          '* ' + sizes[controller][i][0],
          style: TextStyle(fontWeight: FontWeight.bold),
        );
        listOfSizesName.add(a);

        RichText sizesContent = new RichText(
          text: TextSpan(
            text: sizes[controller][i][0] + ': ',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: sizes[controller][i][1],
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
              )
            ],
          ),
        );

        listOfSizesContent.add(sizesContent);
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text('Detail'), backgroundColor: darkBlue),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image[controller],
            width: wi,
            height: he / 3,
          ),
          //Item Name
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name[controller],
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
          //Item Price
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                price[controller].toString() + ' \$',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Center(
            child: Center(
              child: RaisedButton(
                color: lightBrown,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          AddToShopList(controler: controller)));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add_shopping_cart,
                          color: Colors.white, size: 30),
                      Text(
                        'ADD TO CART',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (def[controller] != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(def[controller]),
            ),
          if (size[controller] != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'Size ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: size[controller],
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                  ],
                ),
              ),
            ),
          if (sizes[controller] != null)
            Center(
                child: Column(
              children: listOfSizesName,
            )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: listOfSizesContent,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          if (direction[controller] != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'Direction\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: direction[controller],
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                  ],
                ),
              ),
            ),
          if (ingredients[controller] != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'Ingredents\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: ingredients[controller],
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
