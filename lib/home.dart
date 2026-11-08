import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Builder(builder: (context) => IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu)))
      ),
      drawer: Drawer(
        child: Column(
          spacing: 5,
          children: [
          SizedBox(
          width: double.infinity,
          height: 80,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0))
                ),
                backgroundColor: Colors.blue,
              ),
                child: Text(
                  'MENU',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
                onPressed: (){
                  Navigator.pop(context);
                }),
          ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Habits()));
              },
                style: TextButton.styleFrom(
                  elevation: 50,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))
                ),
              child: Row(
                children: [
                  Icon(Icons.add),
                  Expanded(child: Padding(
                    padding: EdgeInsets.only(right: 12, bottom: 4),
                    child: Center(
                      child: Text(
                      'Habits',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      )
                    ),
                  )
                  ),
                ],
              ),
              ),
              ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Todo()));
              },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))
                ),
              child: Row(
                children: [
                  Icon(Icons.check),
                  Expanded(child:
                  Padding(padding: EdgeInsets.only(right: 12, bottom: 4),
                      child: Center(
                        child: Text(
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                          'Todo List'
                        ),
                      ),
                  )
                  )
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class Habits extends StatelessWidget {
  const Habits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 80),
          child: Text(
            'Habits',
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
      body: Center(
        child: Text('This is the habit page'),
      ),
    );
  }
}

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 80),
          child: Text(
            'Habits',
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
      body: Center(
        child: Text('This is the Todo page'),
      ),
    );
  }
}