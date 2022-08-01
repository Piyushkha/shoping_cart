import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerprogram/provider.dart';

import 'firstscreens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Counter())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(accentColor: Colors.yellow[400]),
        home: Firstscreens(),
      ),
    );
  }
}
