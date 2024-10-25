



import 'package:flutter/material.dart';
import 'package:test_project/homePage.dart';
import 'package:test_project/login_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: LoginPage(),
    );
  }
}
