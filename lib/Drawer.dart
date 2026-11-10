import 'package:flutter/material.dart';
import 'Todo.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 120,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Text('MENU'),
            ),
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Todolist()));
          },
            child: Row(
              children: [
                Text(
                  'TODO',
                ),
              ],
            ),)
        ]
      ),
    );
  }
}
