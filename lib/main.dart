


import 'package:flutter/material.dart';
import 'package:test_project/homePage.dart';
import 'package:test_project/rePage.dart';
import 'login_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Homepage()
    );
  }
}
