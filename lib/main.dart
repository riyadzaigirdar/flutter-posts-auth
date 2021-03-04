
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

class MyHome extends StatefulWidget{

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var myname = "Here your name will appear";

  TextEditingController myTextController = new TextEditingController();

  void doSomething(text){
    setState(() {
      myname = text;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child:Text("My Awesome App")
          ),
      ),
      body: 
      // SingleChildScrollView(
      //         child: 
              Center(
          child: 
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(         
                    // decoration:BoxDecoration(
                    //   borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    //   border: Border.all(
                    //     color: Colors.red[500],
                    //   )
                    //   ),
                    child:  Column(
                        children: <Widget>[
                          Container(
                            constraints: BoxConstraints.expand(
                              height: 200.0
                            ),
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
                    Text(myname),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          controller: myTextController,
                          onChanged: (text)=>doSomething(text),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Some Text",
                            labelText: "Name"
                            ),
                      ),
                    )
                  ],
                  ),
             
            ) 
            ,),
          ),
      // ),
      drawer: Container(
              // width: 100,
              width: 350,
              child: Drawer(
          // elevation: 100,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              // UserAccountsDrawerHeader(
              //   accountName: Text("riyad zaigirdar"), 
              //   accountEmail: Text("riyadzaigir280@gmail.com"),
              //   currentAccountPicture: CircleAvatar(
              //     backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/42799939?s=460&u=975ca8612ee36f030fc1952cd7ded42ce01efb69&v=4"),
              //     ),
              //   ),
                MyDrawerHeader("riyad zaigirdar", "riyadzaigir280@gmail.com", "https://avatars.githubusercontent.com/u/42799939?s=460&u=975ca8612ee36f030fc1952cd7ded42ce01efb69&v=4"),
              // DrawerHeader(
              //   child: Text("My Drawer"),
              //   decoration: BoxDecoration(color: Colors.purple),
              //   ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Riyad Zaigirdar"),
                subtitle: Text("Software Developer"),
                trailing: GestureDetector(child:Icon(Icons.edit),),
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
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          print("object");
          setState(() {
            myname = myTextController.text;
          });
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

class MyDrawerHeader extends StatelessWidget{
    final String name;
    final String email;
    final String imagePath;

    MyDrawerHeader(this.name, this.email, this.imagePath);

    @override
    Widget build(BuildContext context){
      return UserAccountsDrawerHeader(
        accountName: Text(name), 
        accountEmail: Text(email),
        currentAccountPicture: CircleAvatar(
          backgroundImage: NetworkImage(imagePath)
        )
        );
      // return Container(
      //   color: Colors.red,
      //   margin: const EdgeInsets.all(0.0),
      //   padding: const EdgeInsets.all(60.0),
      //   child: Text("Kalke Mobile App")
      //   // Row(
      //   //   children: [],
      //   //   ),
      // );
    }
}