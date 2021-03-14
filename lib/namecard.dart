import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key key,
    @required this.myTextController,
    @required this.myname,
    @required this.myEmailController,
  }) : super(key: key);

  final TextEditingController myTextController;
  final String myname;
  final TextEditingController myEmailController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          // decoration:BoxDecoration(
          //   borderRadius: BorderRadius.all(Radius.circular(50.0)),
          //   border: Border.all(
          //     color: Colors.red[500],
          //   )
          //   ),
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 200.0),
                // decoration: BoxDecoration(
                //   color: Colors.red,
                //   border: Border.all(color: Colors.red[500],),
                //   borderRadius: BorderRadius.all(Radius.circular(50.0))
                //   ),
                child: Image.asset(
                  "assets/awesome.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(myTextController.text),
              Text(myname),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: myTextController,
                  //onChanged: (text) => doSomething(text),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter name",
                      labelText: "Name"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: myEmailController,
                  //onChanged: (text) => doSomething(text),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter email",
                      labelText: "email"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
