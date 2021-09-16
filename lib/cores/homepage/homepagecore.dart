import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageCore extends GetxController{


  PageController controller;
  List<Widget> items = [
    buildPage("0", Colors.red),
    buildPage("1", Colors.blue),
    buildPage("2", Colors.green),
    buildPage("3", Colors.amber),
    buildPage("4", Colors.deepPurple),
    buildPage("5", Colors.teal),
    buildPage("6", Colors.pink),
    buildPage("7", Colors.brown)
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    controller = PageController();

  }



}

Widget buildPage(String text, Color color) {
  return Padding(
    padding: EdgeInsets.all(12),
    child: Container(
      color: color,
      child: Center(child: Text(
        text, style: TextStyle(fontSize: 42, color: Colors.white),),),
    ),
  );
}