# posts

A new Flutter project.

# Install delependencies like npm i

    flutter packages get

## login page

    class _LoginPageState extends State<LoginPage> {
      final formKey = GlobalKey<FormState>();

      final _usernameController = TextEditingController();

      final _passwordController = TextEditingController();

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Login Page"),
          ),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Center(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _usernameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "Enter Username", labelText: "Username"),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter Password", labelText: "Password"),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          child: Text("Sign in"),
                          color: Colors.orange,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }