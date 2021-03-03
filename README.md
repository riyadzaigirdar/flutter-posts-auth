# posts

A new Flutter project.

## Getting Started

    Container(
            // margin: const EdgeInsets.all(10.0),
            // padding: const EdgeInsets.all(20.0),
            // decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                  color: Colors.red[500],
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.pink, Colors.yellow]
                  ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10
                  )
                ]
              ),
            margin: const EdgeInsets.all(10.0),
            // color: Colors.red,
            width: 150,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(margin: EdgeInsets.only(bottom: 10.0),child:Text("Total Candidate")),
                Text("500")
                ]
              ),
        ),
