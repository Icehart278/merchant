import 'package:flutter/material.dart';
import 'package:merchant/Homepage/homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Merchant',
      theme: new ThemeData(
       
      ),
      home: new HomePage(),
    );
  }
} 
