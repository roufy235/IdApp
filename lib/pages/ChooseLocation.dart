import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() {
    // simulate a network request
    Future.delayed(Duration(seconds: 4), () {
      print('yoshi');
    });
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('Choose location'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Text('Choose Location Screen'),
    );
  }
}
