import "package:flutter/material.dart";
import 'package:posts/drawer.dart';
// import 'package:posts/namecard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

// nh_h08_riyad
// riyad{"json":1}
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
    // print(data);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Align(
            alignment: Alignment.centerLeft, child: Text("My Awesome App")),
      ),
      body: data != null
          ? ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]["title"]),
                subtitle: Text("ID: ${data[index]["id"]}"),
                leading: FadeInImage.assetNetwork(
                  placeholder: 'assets/loading.gif',
                  image: data[index]["url"],
                  // Image.network(data[index]["url"])
                ),
              );
            })
          : Center(
              child: CircularProgressIndicator(),
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
