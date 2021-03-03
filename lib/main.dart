

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

  void printer(){
    print("little bit");
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child:Text("My Awesome App")
          ),
      ),
      body: Center(
              child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.green,
                width: 100,
                height: 100,
                ),
              ),
      drawer: Drawer(
        // elevation: 100,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("riyad zaigirdar"), 
              accountEmail: Text("riyadzaigir280@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/42799939?s=460&u=975ca8612ee36f030fc1952cd7ded42ce01efb69&v=4"),
                ),
              ),
            // DrawerHeader(
            //   child: Text("My Drawer"),
            //   decoration: BoxDecoration(color: Colors.purple),
            //   ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Riyad Zaigirdar"),
              subtitle: Text("Software Developer"),
              trailing: GestureDetector(child:Icon(Icons.edit), onDoubleTap: ()=>printer(),),
              onTap: (){},
              onLongPress: (){},
            ),
            ListTile(
              leading:Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("riyadzaigir280@gmail.com"),
              trailing: Icon(Icons.electric_bike),
              onTap: (){},
              onLongPress: (){},
            )
          ],
        ),
        ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},        
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