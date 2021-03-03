# posts

A new Flutter project.

## Getting Started

    Scaffold(
        .... ,
        .... ,
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
    )
