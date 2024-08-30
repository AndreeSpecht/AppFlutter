import 'package:flutter/material.dart';
import 'package:myapp/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Home(),
  ));
}
