import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class WorldTime {
  String location;
  String time = '';
  String flag;
  String url;
  bool isDayTime = false;


  WorldTime({this.location, this.url, this.flag});



  Future<void> getTime() async {
    try {
      Response response = await get('https://worldtimeapi.org/api/timezone/${this.url}');
      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        String datetime = data['datetime'];
        String offset = data['utc_offset'].substring(1, 3);
        // print(datetime);
        // print(offset);

        //create a datetime obj
        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offset)));

        this.isDayTime = (now.hour > 6 && now.hour < 0) ? true : false;
        this.time = DateFormat.jm().format(now);
      } else {
        this.time = 'An error has occurred';
      }
    } catch (e) {
      this.time = 'An error has occurred';
    }
  }

}