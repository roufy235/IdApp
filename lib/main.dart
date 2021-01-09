import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CovirtueIdApp(),
  ));
}

class CovirtueIdApp extends StatefulWidget {
  @override
  _CovirtueIdAppState createState() => _CovirtueIdAppState();
}

class _CovirtueIdAppState extends State<CovirtueIdApp> {

  int level = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Covirtue Id App'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        brightness: Brightness.dark,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Bello Abdulrouf',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              level.toString(),
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'email@email.com',
                  style: TextStyle(
                      color: Colors.grey[100],
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            this.level++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
    );
  }
}
