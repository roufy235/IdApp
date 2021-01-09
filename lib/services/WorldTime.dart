import 'package:http/http.dart';
import 'dart:convert';


class WorldTime {
  String location;
  String time = '';
  String flag;
  String url;


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
        this.time = now.toString();
      } else {
        this.time = 'An error has occurred';
      }
    } catch (e) {
      this.time = 'An error has occurred';
    }
  }

}