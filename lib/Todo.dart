import 'package:flutter/material.dart';
import 'package:fluttertodo/home.dart';

final TextEditingController textController = TextEditingController(
);

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 80),
          child: Text(
            'Todo',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.undo)),
      ),
      body: Row(
        children: [
          Column(
            children: [
              TextButton(onPressed: (){
                showDialog(context: context, builder: (context) => AlertDialog(

                  title: Text('add a task'),
                  content: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter a task...',
                    ),
                    controller: textController,


                  ),
                  actions: [
                    ElevatedButton.icon(onPressed: (){
                      String task = textController.text;
                      Navigator.pop(context);
                    }, label: Text('Enter'))
                  ],
                ));
              },
              child: Icon(
                  Icons.add),
              )
            ],
          ),
          Center(
            child: Padding(padding: EdgeInsets.only(left: 80),
              child: Text('This is the Todo list'),
            )
          )
        ],
      ),
    );
  }
}