# posts

A new Flutter project.

# Install delependencies like npm i

    flutter packages get

## Fetch data using http in widget load

    var url = "https://jsonplaceholder.typicode.com/photos";
    var data;

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

# Then show it in list view and show loading when fetching data
    Scaffold(
      body: data != null
        ? ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title: Text(data[index]["title"]),
              subtitle: Text("ID: ${data[index]["id"]}"),
              leading: Image.network(data[index]["url"]),
              // leading: Ima,
            );
          })
        : Center(
            child: CircularProgressIndicator(),
          ),
    )