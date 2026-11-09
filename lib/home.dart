import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text('testing'),
      ),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          'HOME',
          style: TextStyle(
            fontWeight: FontWeight(1000),
            fontSize: 30,

          ),
        ),
        leading: Builder(builder: (context) => IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu))),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.all(20)),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey,
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Steps :',
                  style: TextStyle(fontWeight: FontWeight(1000), fontSize: 20),
                ),
                Divider(thickness: 1, color: Colors.black,),

                Text(
                  'Water drank :',
                  style: TextStyle(fontWeight: FontWeight(1000), fontSize: 20),

                ),
                Divider(thickness: 1,color: Colors.black,),

                Text(
                  'Task Complete :',
                  style: TextStyle(fontWeight: FontWeight(1000), fontSize: 20),

                ),
                Divider(thickness: 1,color: Colors.black,
    )
  ]
    )
    )
    ],
      )
    );

  }
}
