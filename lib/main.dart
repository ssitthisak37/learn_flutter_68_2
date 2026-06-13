import 'package:flutter/material.dart';
import 'screen/home.dart'; 
import 'screen/item.dart';
void main() {
  runApp(
    MaterialApp(
      title: "หัวข้อ",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("หัวข้อ"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Item(), 
      ),
    ),
  );
}