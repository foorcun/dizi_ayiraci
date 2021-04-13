import 'package:dizi_ayiraci/screens/dizi_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (BuildContext context) => DizisListScreen(),
        // "/cart": (BuildContext context) => CartScreen()
      },
      initialRoute: "/",
    );
  }
}
