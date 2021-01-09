import 'package:covirtue_id_app/models/WorldTimeDataModel.dart';
import 'package:covirtue_id_app/services/WorldTime.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTimeDataModel> locations = [
      WorldTimeDataModel(url: 'Africa/Lagos', location: 'Lagos'),
      WorldTimeDataModel(url: 'Africa/Nairobi', location: 'Nairobi'),
      WorldTimeDataModel(url: 'Europe/Berlin', location: 'Berlin'),
      WorldTimeDataModel(url: 'America/Mexico_City', location: 'Mexico'),
      WorldTimeDataModel(url: 'Africa/Cairo', location: 'Cairo'),
      WorldTimeDataModel(url: 'Europe/Paris', location: 'Paris'),
      WorldTimeDataModel(url: 'America/New_York', location: 'NewYork'),
      WorldTimeDataModel(url: 'America/Phoenix', location: 'Phoenix'),
      WorldTimeDataModel(url: 'America/Regina', location: 'Regina'),
      WorldTimeDataModel(url: 'America/Toronto', location: 'Toronto'),
  ];


  void updateTime(index) async {
    WorldTimeDataModel data = this.locations[index];
    WorldTime instance = WorldTime(location: data.location, flag: '', url: data.url);
    await instance.getTime();
    Navigator.pop(context, {
      'time': instance.time,
      'flag': instance.flag,
      'location': instance.location,
      'isDayTime': instance.isDayTime,
    });
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
      body: ListView.builder(
        itemCount: this.locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 10.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  this.updateTime(index);
                },
                title: Text(this.locations[index].location),
              ),
            ),
          );
        },
      ),
    );
  }
}
