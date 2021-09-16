import 'package:flutter/material.dart';
import 'package:homeface/view/homepage/homepagemobilview.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: Scaffold(
        body:HomePageMobileView(),
      )
    );
  }
}

