// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider.dart';
import 'scondscreen.dart';
import 'package:badges/badges.dart';

// import 'provider.dart';

class Firstscreens extends StatelessWidget {
  void _incrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).incrementCounter();
  }

  List<String> productUnit = [
    'KG',
    'Dozen',
    'KG',
    'Dozen',
    'KG',
    'KG',
    'KG',
  ];
  List<int> productPrice = [10, 20, 30, 40, 50, 60, 70];
  List<String> productImage = [
    'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
    'https://image.shutterstock.com/image-photo/orange-fruit-slices-leaves-isolated-600w-1386912362.jpg',
    'https://image.shutterstock.com/image-photo/green-grape-leaves-isolated-on-600w-533487490.jpg',
    'https://media.istockphoto.com/photos/banana-picture-id1184345169?s=612x612',
    'https://media.istockphoto.com/photos/cherry-trio-with-stem-and-leaf-picture-id157428769?s=612x612',
    'https://media.istockphoto.com/photos/single-whole-peach-fruit-with-leaf-and-slice-isolated-on-white-picture-id1151868959?s=612x612',
    'https://media.istockphoto.com/photos/fruit-background-picture-id529664572?s=612x612',
  ];

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context).getCounter;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Sceconscreen()));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              child: Center(
                child: Badge(
                  badgeContent: Text(
                    '$counter',
                    style: TextStyle(color: Colors.white),
                  ),
                  animationDuration: const Duration(microseconds: 1500),
                  child: const Icon(Icons.shopping_bag_outlined),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
          child: ListView.builder(
            itemCount: productUnit.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                          height: 100,
                          width: 100,
                          image: NetworkImage(productImage[index].toString())),
                      Column(
                        children: [
                          // Text(
                          //   productUnit[index].toString(),
                          //   style: const TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 25,
                          //   ),
                          // ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 50,
                                color: Colors.green[100],
                                child: Text(productUnit[index].toString()),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 50,
                                color: Colors.blue[100],
                                child:
                                    Text('\$' + productPrice[index].toString()),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 70,
                          color: Colors.green,
                          child: GestureDetector(
                            onTap: () {
                              _incrementCounter(context);
                            },
                            child: Row(
                              children: [
                                Icon(Icons.add),
                                const Text('Add'),
                              ],
                            ),
                          )),
                    ],
                  ),
                ]),
              );
            },
          ),
        )
      ]),
    );
  }
}
