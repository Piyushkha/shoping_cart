// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider.dart';

class Sceconscreen extends StatelessWidget {
  Sceconscreen({Key? key}) : super(key: key);

  void _incrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context).getCounter;
    return Scaffold(
      appBar: AppBar(title: Text("screen 2")),
      body: Center(child: Text("$counter")),
      floatingActionButton:
          FloatingActionButton(onPressed: () => _incrementCounter(context)),
    );
  }
}
