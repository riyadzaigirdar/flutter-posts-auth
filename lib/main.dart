
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyHome(),
      theme: ThemeData(
        primarySwatch: Colors.purple
      )
    );
  }
}

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child:Text("My Awesome App")
          ),
      ),
      body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            color: Colors.red,
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            color: Colors.red,
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            color: Colors.red,
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            color: Colors.red,
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            color: Colors.red,
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            color: Colors.red,
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.all(8.0),
                          )
                        ],
                        ),
              )
      )
    );
  }
}