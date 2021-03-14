import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHome(), theme: ThemeData(primarySwatch: Colors.purple));
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Align(
              alignment: Alignment.centerLeft, child: Text("My Awesome App")),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  // margin: const EdgeInsets.all(10.0),
                  // padding: const EdgeInsets.all(20.0),
                  // decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.red[500],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.pink, Colors.yellow]),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 10)
                      ]),
                  margin: const EdgeInsets.all(10.0),
                  // color: Colors.red,
                  width: 150,
                  height: 100,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            child: Text("Total Candidate")),
                        Text("500")
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  // color: Colors.red,
                  width: 150,
                  height: 100,
                  child: Center(
                      child: Text(
                    "hello hello hello hello",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  // color: Colors.red,
                  width: 150,
                  height: 100,
                  child: Center(child: Text("hello hello")),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  //color: Colors.red,
                  width: 150,
                  height: 100,
                  child: Center(child: Text("hello hello")),
                )
              ],
            )
          ],
        ));
  }
}
