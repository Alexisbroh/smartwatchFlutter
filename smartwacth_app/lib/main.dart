import 'package:flutter/material.dart';

void main() {
  runApp(MyWatchApp());
}

class MyWatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: ListView(
          children: [
            // Adding an image from the internet
    
            Card(
              child: ListTile(
                title: Text('Check your translations', style: TextStyle(fontSize: 18)),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen1()),
                    
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Check your notes', style: TextStyle(fontSize: 18)),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen2()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(title: Text('Translations')),
      body: Center(child: Text('Translate in your smartwatch')),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(title: Text('Notes')),
      body: Center(child: Text('Check your notes in this smartwatch')),
    );
  }
}
