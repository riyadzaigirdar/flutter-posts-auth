import 'package:flutter/material.dart';
// import 'pages/homepage.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage(), theme: ThemeData(primarySwatch: Colors.purple));
  }
}
