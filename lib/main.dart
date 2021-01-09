import 'package:covirtue_id_app/pages/ChooseLocation.dart';
import 'package:covirtue_id_app/pages/Home.dart';
import 'package:covirtue_id_app/pages/Splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Splash(),
      '/home' : (context) => Home(),
      '/location' : (context) => ChooseLocation(),
    },
  ));
}


