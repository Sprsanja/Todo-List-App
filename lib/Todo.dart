import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State<Todolist> createState() => _TodoState();
}

class _TodoState extends State<Todolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        toolbarHeight: 80,
        title: Text(
          'TODO',
          style: TextStyle(
            fontWeight: FontWeight(1000),
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10), child:  Text(
                'Task',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight(1000)
                ),
              ),
    ),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            ],
          ),
          Divider(thickness: 2, color: Colors.black,),
          const TodoBox(),
        ],
      )
    );
  }
}

class TodoBox extends StatefulWidget {
  const TodoBox({super.key});

  @override
  State<TodoBox> createState() => _TodoBoxState();
}

class _TodoBoxState extends State<TodoBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
