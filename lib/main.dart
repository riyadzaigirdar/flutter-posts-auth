import 'package:flutter/material.dart';
import 'package:posts/pages/homepage.dart';
// import 'pages/homepage.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      initialRoute: LoginPage.routeName,
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        MyHome.routeName: (context) => MyHome()
      },
    );
  }
}
