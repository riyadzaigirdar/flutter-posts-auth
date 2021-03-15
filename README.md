# posts

A new Flutter project.

# Install delependencies like npm i

    flutter packages get

# Navigator and push route

## set routes in materialapp 

    MaterialApp(
      // home: LoginPage(),
      initialRoute: LoginPage.routeName,
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        MyHome.routeName: (context) => MyHome()
      },
    );

## set static route in widgets

    static const String routeName = "/login";

    static const String routeName = "/homepage";

## then easy way (no props passed)

    Navigator.pushNamed(context, MyHome.routeName);

## hard way (props passed)

     Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => MyHome(...pass something))
          );


    