# posts

A new Flutter project.

## Getting Started

    var myname = "Here your name will appear";

    TextEditingController myTextController = new TextEditingController();

    void doSomething(text){
      setState(() {
        myname = text;
        });
      }
    
    TextField(
          controller: myTextController,
          onChanged: (text)=>doSomething(text),
          decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter Some Text",
          labelText: "Name"
          ),
      ),

    floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          print("object");
          setState(() {
            myname = myTextController.text;
          });
        }, 