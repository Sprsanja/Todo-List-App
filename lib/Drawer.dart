import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 114.2,
            child: (
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue,),
                  child: Text(
                    'Menu',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight(1000)
                    ),
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}
