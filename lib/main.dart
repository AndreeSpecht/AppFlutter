import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Home(),
  ));
}
