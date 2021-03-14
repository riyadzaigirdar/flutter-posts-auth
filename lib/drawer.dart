import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            MyDrawerHeader("riyad zaigirdar", "riyadzaigir280@gmail.com",
                "https://avatars.githubusercontent.com/u/42799939?s=460&u=975ca8612ee36f030fc1952cd7ded42ce01efb69&v=4"),
            // DrawerHeader(
            //   child: Text("My Drawer"),
            //   decoration: BoxDecoration(color: Colors.purple),
            //   ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Riyad Zaigirdar"),
              subtitle: Text("Software Developer"),
              trailing: GestureDetector(
                child: Icon(Icons.edit),
              ),
              onTap: () {},
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("riyadzaigir280@gmail.com"),
              trailing: Icon(Icons.electric_bike),
              onTap: () {},
              onLongPress: () {},
            )
          ],
        ),
      ),
    );
  }
}

class MyDrawerHeader extends StatelessWidget {
  final String name;
  final String email;
  final String imagePath;

  MyDrawerHeader(this.name, this.email, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
        accountName: Text(name),
        accountEmail: Text(email),
        currentAccountPicture:
            CircleAvatar(backgroundImage: NetworkImage(imagePath)));
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
