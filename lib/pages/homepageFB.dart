import "package:flutter/material.dart";
import 'package:posts/drawer.dart';
// import 'package:posts/namecard.dart';
import 'package:http/http.dart' as http;
import 'package:posts/pages/login.dart';
import 'dart:convert';

import 'package:posts/utils/constants.dart';

class MyHomeFB extends StatefulWidget {
  static const String routeName = "/myhomeFB";
  @override
  _MyHomeFBState createState() => _MyHomeFBState();
}

class _MyHomeFBState extends State<MyHomeFB> {
  var myname = "Here your name will appear";
  var myemail = "your email will appear here";

  TextEditingController myTextController = new TextEditingController();
  TextEditingController myEmailController = new TextEditingController();
  //void doSomething(text) {
  //  setState(() {
  //    myname = text;
  //  });
  //}

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

// nh_h08_riyad
// riyad{"json":1}
  // @override
  // void initState() {
  //   super.initState();
  //   fetchData();
  // }

  Future fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    // setState(() {});
    // print(data);
    return data;
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Align(
            alignment: Alignment.centerLeft, child: Text("My Awesome App")),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
            ),
            onPressed: () {
              Constants.prefs.setBool("loggedIn", false);
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          )
        ],
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("Fetch Something"),
              );
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: FadeInImage.assetNetwork(
                      placeholder: 'assets/loading.gif',
                      image: data[index]["url"],
                    ),
                    title: data[index]["title"],
                    subtitle: data[index]["id"],
                  );
                },
              );
          }
        },
      ),
      //   Padding(
      // padding: const EdgeInsets.all(8.0),
      // child:
      //),
      // SingleChildScrollView(
      //   child: NameCardWidget(
      //       myTextController: myTextController,
      //       myname: myname,
      //       myEmailController: myEmailController),
      // ),
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
