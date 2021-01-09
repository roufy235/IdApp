import 'package:covirtue_id_app/services/WorldTime.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: '', url: 'Europe/Berlin');
    await instance.getTime();
    setState(() {
      this.time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    this.setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('Splash Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(this.time),
      ),
    );
  }
}
