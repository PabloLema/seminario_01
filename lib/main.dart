import 'package:flutter/material.dart';
import 'package:seminario_01/src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Seminario 01',
        home: HomePage());
  }
}
