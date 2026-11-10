import 'package:flutter/material.dart';
import 'Drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        foregroundColor: Colors.white,
        toolbarHeight: 80,
        centerTitle: true,
        leading: Padding(padding: EdgeInsets.only(left: 10),
          child: Builder(builder: (context) => IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: Icon(Icons.menu))),
        ),
        title: Text(
          'HOME',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight(1000)
          ),
        ),
      ),
      drawer: MenuDrawer(),
      body:

      Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10),
                child: Text(
                'DAILIES',
                style: TextStyle(
                  fontWeight: FontWeight(500),
                  fontSize: 20,
                ),
              ),
              ),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.add),),

            ],
          ),
          Divider(thickness: 3, color: Colors.black,),
          const Taskbox(),
          ],
      ),
    );
  }
}
class Taskbox extends StatefulWidget {
  const Taskbox({super.key});

  @override
  State<Taskbox> createState() => _TaskboxState();
}

class _TaskboxState extends State<Taskbox> {
  bool _isWalked = false;
  bool _drank = false;
  bool _Homework = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(20),
        color: Colors.blue,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Walk 5Km : ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight(1000),
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Checkbox(
                  value: _isWalked,
                  activeColor: Colors.white,
                  checkColor: Colors.blue,
                  side: const BorderSide(color: Colors.white, width: 2),
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isWalked = newValue ?? false;
                    });
                  },
                )
              ],
            ),
            Divider(thickness: 2, color: Colors.white,),
            Row(
              children: [
                Text('Drink 3L : ',
                  style: TextStyle(
                    fontWeight: FontWeight(1000),
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Checkbox(value: _drank,
                    side: BorderSide(color: Colors.white, width: 2),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    onChanged:(bool? newValue) {
                  setState(() {
                    _drank = newValue ?? false;
                  });
                })
              ],
            ),
            Divider(thickness: 2, color: Colors.white,),
            Row(
              children: [
                Text(
                  'Home Work : ',
                  style: TextStyle(
                    fontWeight: FontWeight(1000),
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Checkbox(value: _Homework,
                    side: BorderSide(color: Colors.white, width: 2),
                    checkColor: Colors.blue,
                    activeColor: Colors.white,
                    onChanged: (bool? newValue) {
                  setState(() {
                    _Homework = newValue ?? false;
                  });
                })
              ],
            )
        ]
        )
    );

  }
}
