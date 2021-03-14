import "package:flutter/material.dart";
import 'package:posts/drawer.dart';
import 'package:posts/namecard.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var myname = "Here your name will appear";
  var myemail = "your email will appear here";

  TextEditingController myTextController = new TextEditingController();
  TextEditingController myEmailController = new TextEditingController();
  //void doSomething(text) {
  //  setState(() {
  //    myname = text;
  //  });
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Align(
            alignment: Alignment.centerLeft, child: Text("My Awesome App")),
      ),
      body: SingleChildScrollView(
        child: NameCardWidget(
            myTextController: myTextController,
            myname: myname,
            myEmailController: myEmailController),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("object");
          myname = myTextController.text;
          myemail = myEmailController.text;
          setState(() {});
          print(myemail);
          print(myname);
        },
        tooltip: "add a image",
        icon: Icon(Icons.thumb_up),
        label: Text("Like"),
        backgroundColor: Colors.green,
      ),
      //   floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //   },
      //   label: Text('Approve'),
      //   icon: Icon(Icons.thumb_up),
      //   backgroundColor: Colors.pink,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
