import 'package:flutter/material.dart';
import 'package:posts/pages/homepage.dart';
import 'package:posts/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'pages/homepage.dart';
import 'pages/login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      initialRoute: Constants.prefs.getBool("loggedIn") == true
          ? MyHome.routeName
          : LoginPage.routeName,
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        MyHome.routeName: (context) => MyHome()
      },
    );
  }
}
